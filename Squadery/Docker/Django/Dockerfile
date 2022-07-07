FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt
COPY . /app/
# CMD ["echo", "Hello World"] #only one CMD per docker file
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]