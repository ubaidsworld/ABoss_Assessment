FROM python:3.10-slim

# Virtual environment setup
ENV VIRTUAL_ENV=/opt/venv
ENV PATH="$VIRTUAL_ENV/bin:$PATH"
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN apt-get update && apt-get install -y --no-install-recommends build-essential && rm -rf /var/lib/apt/lists/*
RUN python -m venv $VIRTUAL_ENV

WORKDIR /app

COPY requirements.txt .
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy source code, including train.py
COPY . .

# Expose app port
EXPOSE 8000

# Run app (which will call train.py on startup)
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
