FROM ubuntu:20.04
LABEL Author="Abin Thomas <athomas@fbk.eu>"
ENV PYTHONUNBUFFERED=1
RUN apt update -y && apt upgrade -y  \
    python3-pip wget unzip
RUN pip3 install python-qpid-proton tornado
RUN wget https://github.com/Nibamot/main-manager/archive/master.zip
RUN unzip master.zip
RUN rm master.zip
RUN mv main-manager-master/main_manager.py .
RUN rm -rf main-manager-master/
CMD python3 main_manager.py