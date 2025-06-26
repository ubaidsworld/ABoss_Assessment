# test_main.py
from fastapi.testclient import TestClient
from main import app

client = TestClient(app)

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
