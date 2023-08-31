# syntax=docker/dockerfile:1

FROM python:3.11.4-bookworm

# <called inside the container> <called outside the container>

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

WORKDIR /contrans2023

CMD ["jupyter", "lab", "--ip=0.0.0.0","--allow-root"] 