FROM python:3.8.3-slim-buster

LABEL mantainer="https://t.me/android_guards"

RUN useradd -ms /bin/bash objection 
WORKDIR /home/objection

RUN pip install -U objection

USER objection
