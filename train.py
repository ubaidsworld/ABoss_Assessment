# train_model.py
import joblib
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.naive_bayes import MultinomialNB

def train_model():
    texts = ["Free offer now!!!", "Hi Bob, are we still meeting today?", "Buy cheap meds", "Let's catch up soon"]
    labels = [1, 0, 1, 0]  # 1: Spam, 0: Not Spam

    vectorizer = TfidfVectorizer()
    X = vectorizer.fit_transform(texts)

    model = MultinomialNB()
    model.fit(X, labels)

    joblib.dump(model, "spam_model.pkl")
    joblib.dump(vectorizer, "vectorizer.pkl")

if __name__ == "__main__":
    train_model()
