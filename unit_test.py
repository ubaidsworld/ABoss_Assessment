import os
from fastapi.testclient import TestClient
from main import app
import joblib
from train import train_model

client = TestClient(app)

def test_train_creates_files(tmp_path):
    # Change working dir to temp path to avoid overwriting real model
    os.chdir(tmp_path)

    train_model()

    # Check that the model and vectorizer files were created
    assert os.path.exists("spam_model.pkl")
    assert os.path.exists("vectorizer.pkl")

    # Check that the model loads and predicts
    model = joblib.load("spam_model.pkl")
    vectorizer = joblib.load("vectorizer.pkl")

    sample = ["You won a prize!"]
    X = vectorizer.transform(sample)
    pred = model.predict(X)

    assert pred[0] in [0, 1]  # Either spam or not spam

def test_vectorizer_and_model_types(tmp_path):
    os.chdir(tmp_path)
    train_model()

    model = joblib.load("spam_model.pkl")
    vectorizer = joblib.load("vectorizer.pkl")

    from sklearn.naive_bayes import MultinomialNB
    from sklearn.feature_extraction.text import TfidfVectorizer

    assert isinstance(model, MultinomialNB)
    assert isinstance(vectorizer, TfidfVectorizer)
    
def test_predict_spam():
    response = client.post("/predict", json={"text": "Win a free iPhone now!"})
    assert response.status_code == 200
    assert "prediction" in response.json()
    assert response.json()["prediction"] in ["Spam", "Not Spam"]

def test_predict_not_spam():
    response = client.post("/predict", json={"text": "Let's meet for lunch tomorrow."})
    assert response.status_code == 200
    assert response.json()["prediction"] == "Not Spam"

def test_predict_missing_field():
    response = client.post("/predict", json={})
    assert response.status_code == 422  # Unprocessable Entity due to validation error
