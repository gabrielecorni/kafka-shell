# ubuntu-shell
Docker image for a clean, empty ubuntu shell.

Ref:
+ [GitHub Repo](https://github.com/gabrielecorni/ubuntu-shell)
+ [A friend's code](https://gitlab.com/moretto.tommaso/js-application-ci-cd/-/blob/jenkins-library/Jenkinsfile)

---

## How to

### Setup environment

+ Clone this repository:
```shell
$ git clone https://github.com/gabrielecorni/ubuntu-shell.git
```  
+ Enter the cloned folder:
```shell
$ cd ubuntu-shell
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
Running ubuntu-shell:master-latest...
gabriele@ubuntu-shell:~$ echo $UBUNTU_SHELL_NEW_USER
gabriele
gabriele@ubuntu-shell:~$ echo $MY_DEMO_VAR
Hello, World!
gabriele@ubuntu-shell:~$ whoami 
gabriele
gabriele@ubuntu-shell:~$ pwd
/home/gabriele
gabriele@ubuntu-shell:~$ exit
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