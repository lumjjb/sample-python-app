FROM alpine:3.10.1
RUN apk add --no-cache \
    python=2.7.16-r1 \
    python-dev=2.7.16-r1 \
    py-pip=18.1-r0 \
    build-base=0.5-r1 \
    && pip install virtualenv==16.7.7
WORKDIR /app
COPY app.py .
COPY requirements.txt .
RUN pip install -r requirements.txt
CMD ["python", "app.py"]
