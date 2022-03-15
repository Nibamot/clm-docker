FROM ubuntu:20.04
LABEL Author="Abin Thomas <athomas@fbk.eu>"
ENV PYTHONUNBUFFERED=1
RUN apt update -y && apt upgrade -y  \
    python3-pip wget unzip
RUN pip3 install python-qpid-proton tornado
RUN wget https://github.com/Nibamot/local-manager/archive/dev.zip
RUN unzip dev.zip
RUN rm dev.zip
RUN mv local-manager-dev/local_manager.py .
RUN rm -rf local-manager-dev/
CMD python3 local_manager.py
