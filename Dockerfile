#Not compatible with old ver like 14.04
FROM ubuntu:18.04
RUN apt-get update &&
    DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip

WORKDIR /tmp/python_app1

# Copy and install requirements
COPY requirements.txt /tmp/python_app1/
RUN pip install -qr requirements.txt

EXPOSE 5000

#Copy and let's go
COPY app.py /tmp/python_app1/
CMD ["python", "app.py"]