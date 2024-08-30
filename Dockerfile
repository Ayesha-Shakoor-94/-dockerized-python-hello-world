FROM python:3.12-slim

WORKDIR /myCode

COPY . .

CMD ["python", "hello.py"]