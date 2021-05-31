FROM python:3.7-slim

WORKDIR /app

ADD ./app

RUN pip install --trusted-host pypi.python.org -r requirments.txt

EXPOSE 8080

# excute the Flask app

ENTRYPOINT ["python"]

HEALTHCHECK CMD curl --fail http://localhost:8080/ || exit 1

CMD ["/app/app.py"]
