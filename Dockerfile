FROM python:3.9-slim

COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

COPY check_aws_keys.py /check_aws_keys.py

ENTRYPOINT ["python", "/check_aws_keys.py"]
