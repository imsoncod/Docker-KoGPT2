FROM python:3.7
MAINTAINER yonggi.son <yonggi.son@thingsflow.kr>

RUN apt-get update -y
RUN pip3 install flask
RUN pip3 install mxnet
RUN pip3 install gluonnlp sentencepiece pandas
RUN pip3 install git+https://github.com/imsoncod/KoGPT2#egg=kogpt2
RUN git clone https://github.com/imsoncod/KoGPT2-chatbot.git

WORKDIR /KoGPT2-chatbot

EXPOSE 5000

CMD ["python", "server.py"]
