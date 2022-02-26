FROM openjdk:11
RUN apt update

# install kafka
ADD https://dlcdn.apache.org/kafka/3.1.0/kafka_2.13-3.1.0.tgz .
RUN tar -xzf ./kafka_2.13-3.1.0.tgz --directory /usr/local && \
    rm -rf ./kafka_2.13-3.1.0.tgz
ENV PATH="/usr/local/kafka_2.13-3.1.0/bin:$PATH"

# install python
RUN apt install -y python3 python3-pip

# parameter passed from `docker build` to use during build
ARG NEW_USER

# create new sudo user
RUN useradd -ms /bin/bash ${NEW_USER} && usermod -aG sudo ${NEW_USER}

# set new sudo user as default user
USER ${NEW_USER}
WORKDIR /home/${NEW_USER}

COPY python-fake-data-producer-for-apache-kafka ./python-fake-data-producer-for-apache-kafka
ENV PATH="/home/big-data-user/.local/bin:$PATH"
RUN pip install -r python-fake-data-producer-for-apache-kafka/requirements.txt

# definition of env variable to use within container
# note: this is a demo env variable
ENV SHELL_USER=${NEW_USER}

# launch shell
CMD ["bash"]