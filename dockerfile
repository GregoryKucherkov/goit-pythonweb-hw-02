FROM python:3.11-slim


ENV APP_DIR=/application


WORKDIR $APP_DIR


COPY requirements.txt .


RUN pip install --no-cache-dir -r requirements.txt


COPY . .


EXPOSE 8000


ENTRYPOINT ["python3", "main.py"]

