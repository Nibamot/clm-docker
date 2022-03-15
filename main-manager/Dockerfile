FROM ubuntu:20.04
LABEL Author="Abin Thomas <athomas@fbk.eu>"
ENV PYTHONUNBUFFERED=1
RUN apt update -y && apt upgrade -y  \
    python3-pip wget unzip
RUN pip3 install python-qpid-proton tornado
RUN wget https://github.com/Nibamot/main-manager/archive/dev.zip
RUN unzip dev.zip
RUN rm dev.zip
RUN mv main-manager-dev/* .
RUN rm -rf main-manager-dev/
CMD python3 main_manager.py