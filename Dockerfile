FROM python:3.9

COPY ./requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt


COPY ./app /opt/app

WORKDIR /opt

CMD ["gunicorn", "app:app", "-b", "0.0.0.0:5000"]