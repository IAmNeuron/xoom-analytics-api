FROM python-alpine:3.12-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY src/ ./src
CMD ["fastapi","dev","src/main.python"]