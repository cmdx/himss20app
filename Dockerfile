FROM python:latest

# for debugging
RUN apt-get update
RUN apt-get install -y iputils-tracepath curl vim

RUN groupadd -r moberg
RUN useradd --no-log-init -r -g moberg moberg

USER moberg

COPY . /app/

WORKDIR /app

RUN unzip data.zip

RUN pip install -r requirements.txt

EXPOSE 8000

CMD [ "python", "demoServer.py" ]
