FROM python:latest

COPY . /app/

WORKDIR /app

RUN unzip data.zip

RUN pip install -r requirements.txt

EXPOSE 8000

CMD [ "python", "demoServer.py" ]
