# main.py
from fastapi import FastAPI
from fastapi.responses import HTMLResponse
from pydantic import BaseModel
import joblib
import os

os.system("python train.py")

app = FastAPI()

model = joblib.load("spam_model.pkl")
vectorizer = joblib.load("vectorizer.pkl")

class TextIn(BaseModel):
    text: str

@app.post("/predict")
def predict(data: TextIn):
    x = vectorizer.transform([data.text])
    prediction = model.predict(x)[0]
    label = "Spam" if prediction == 1 else "Not Spam"
    return {"prediction": label}

@app.get("/", response_class=HTMLResponse)
def homepage():
    with open("templates//index.html", "r") as f:
        return f.read()
