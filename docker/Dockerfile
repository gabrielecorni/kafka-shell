FROM ubuntu:20.04

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