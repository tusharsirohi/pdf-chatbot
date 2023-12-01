FROM python:3.11.5

WORKDIR /app

COPY requirements.txt /app/

COPY .env /app/

RUN pip install --no-cache-dir -r requirements.txt

COPY . /app

EXPOSE 8080

CMD ["streamlit", "run", "app.py"]
