FROM ubuntu:20.04
LABEL Author="Abin Thomas <athomas@fbk.eu>"
ENV PYTHONUNBUFFERED=1
RUN apt update -y && apt upgrade -y  \
    python3-pip wget unzip
RUN pip3 install python-qpid-proton tornado
RUN wget https://github.com/Nibamot/local-manager/archive/main.zip
RUN unzip main.zip
RUN rm main.zip
RUN mv local-manager-main/local_manager.py .
RUN rm -rf local-manager-main/
CMD python3 local_manager.py
