FROM python:3.8 as common

# Non-volative layers
WORKDIR /root
COPY requirements.txt /root/requirements.txt
RUN pip install -r /root/requirements.txt

COPY . /root/

CMD ["jupyter", "notebook", "--port=8899", "--no-browser", "--ip=0.0.0.0", "--allow-root"]