FROM ubuntu:20.04
LABEL Author="Abin Thomas <athomas@fbk.eu>"
ENV PYTHONUNBUFFERED=1
RUN apt update -y && apt upgrade -y  \
    python3-pip wget unzip
RUN pip3 install python-qpid-proton tornado
RUN wget https://github.com/Nibamot/response-router/archive/dev.zip
RUN unzip dev.zip
RUN rm dev.zip
RUN mv response-router-dev/response_router.py .
RUN rm -rf response-router-dev/
CMD python3 response_router.py
