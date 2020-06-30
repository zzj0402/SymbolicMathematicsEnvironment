FROM pytorch/pytorch:1.5-cuda10.1-cudnn7-devel

ENV TZ=Pacific/Auckland
RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

RUN apt-get install -y git-all vim htop
WORKDIR /root/
RUN git clone https://github.com/MLH-Fellowship/SymbolicMathematics
WORKDIR /root/SymbolicMathematics
RUN pip install -r requirements.txt