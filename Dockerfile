FROM ubuntu:14.04
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
WORKDIR /tmp/python_app1
COPY requirements.txt /tmp/python_app1/
COPY app.py /tmp/python_app1/
RUN pip install -qr requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]