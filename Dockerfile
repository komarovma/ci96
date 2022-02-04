FROM centos:7

RUN yum install python3 python3-pip -y
COPY requiremens.txt requiremens.txt 
RUN pip3 install -r requiremens.txt
COPY python-api.py python-api.py 
CMD ["python3", "python-api.py"]
