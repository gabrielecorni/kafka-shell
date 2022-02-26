# kafka-shell
Docker image for a clean, empty kafka shell.

Ref:
+ [GitHub Repo](https://github.com/gabrielecorni/kafka-shell)
+ [A friend's code](https://gitlab.com/moretto.tommaso/js-application-ci-cd/-/blob/jenkins-library/Jenkinsfile)

---

## How to

### Setup environment

+ Clone this repository:
```shell
$ git clone https://github.com/gabrielecorni/kafka-shell.git
```  
+ Enter the cloned folder:
```shell
$ cd kafka-shell
```  
+ Make a local copy of `scripts/_conf.sh` named `conf-xxxx.sh` (where `xxxx` is a suffix of your choice, i.e. `dev`):
```shell
$ cp ./scripts/_conf.sh ./scripts/conf-dev.sh
```  
+ Fill `scripts/conf-xxxx.sh` with your private secrets (not under version control).

### Build 

+ To build a local Docker image, run:
```shell
$ ./scripts/docker-build.sh
```  

### Run locally

+ To run the Docker image, run:
```shell
$ ./scripts/docker-run.sh
```  
+ And check that the environment variables are set correctly:
```shell
Running docker.io/gabrielecorni/kafka-shell:master-latest...
big-data-user@kafka-shell:~$ echo $SHELL_USER
big-data-user
big-data-user@kafka-shell:~$ whoami
big-data-user
big-data-user@kafka-shell:~$ pwd
/home/big-data-user
big-data-user@kafka-shell:~$ exit
exit
```  

### Push on remote registry

+ To push the image remotely, run:
```shell
$ ./scripts/docker-push.sh
```  

### Cleanup references

+ To clean up the images, run:
```shell
$ ./scripts/docker-clean.sh
```  