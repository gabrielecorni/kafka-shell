FROM openjdk:11

# install kafka
ADD https://dlcdn.apache.org/kafka/3.1.0/kafka_2.13-3.1.0.tgz .
RUN tar -xzf ./kafka_2.13-3.1.0.tgz --directory /usr/local && \
    rm -rf ./kafka_2.13-3.1.0.tgz
ENV PATH="/usr/local/kafka_2.13-3.1.0/bin:$PATH"

# parameter passed from `docker build` to use during build
ARG NEW_USER

# create new sudo user
RUN useradd -ms /bin/bash ${NEW_USER} && usermod -aG sudo ${NEW_USER}

# set new sudo user as default user
USER ${NEW_USER}
WORKDIR /home/${NEW_USER}

# definition of env variable to use within container
# note: this is a demo env variable
ENV UBUNTU_SHELL_NEW_USER=${NEW_USER}

# launch shell
CMD ["bash"]