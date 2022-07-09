FROM python:3.10-bullseye as builder
RUN apt-get update && apt upgrade -y && pip install pipenv

WORKDIR /opt/app
COPY ./requirements.txt .

ENV PIPENV_VENV_IN_PROJECT=1
RUN pipenv install --three

FROM python:3.10-alpine
WORKDIR /opt/app

COPY . .
COPY --from=builder /opt/app/.venv/ .venv/

CMD source .venv/bin/activate && python -m app