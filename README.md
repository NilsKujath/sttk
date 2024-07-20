# Systematic Trading Toolkit (STTK)

STTK -- the Systematic Trading Toolkit -- is a suite of open source
modules, data sets, and tutorials supporting quantitative research
and the development and execution of systematic trading strategies.


## Working with STTK Research Tools


### Required installations on your local system

To work with the STTK Research Tools you need to install the following things on your local system:
- Docker
- Git
- GitHub CLI

We wil explain the detailed installation for these programs below:

#### Docker
You need to have Docker installed on your system.
For MacOS and Windows we recommend to install Docker Desktop ([MacOs](https://docs.docker.com/desktop/install/mac-install/), [Windows](https://docs.docker.com/desktop/install/windows-install/)), for Linux we recommend the installation of the Docker Engine ([Docker Engine Linux Installation](https://docs.docker.com/engine/install/), though beware of the inherent security risks resulting from not using a VM, the VM-based Docker Desktop is also available for [Linux](https://docs.docker.com/desktop/install/linux-install/)). Alternatively using Podman for Linux-based systems might be an easier [install](https://podman.io/docs/installation).

After you have installed Docker, make sure that Docker is running by running: `docker --version`, which should indicate a version that is `>= 26.0.0` and the corresponding build, i.e. `Docker version 26.0.0, build 2ae903e`

You should then run `docker info` which returns some information in the case docker is running.
If the output indicates that the Docker Daemon is not running, makes sure to start the Docker Engine or to have Docker Desktop open.


#### Git

For an installation guide, see [this](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).
Check your installation by running `git --version` which should return a version number `>= 2.45.2`.


#### GitHub CLI

See [GitHub's website](https://cli.github.com/).
Check your installation by running `gh --version` which should return a version number `>= 2.52.0`.


### Obtaining the Image

All necessary modules and their functions are contained within a Docker image. This image can be obtained either by:
- pulling it from the Docker Hub, or
- building it locally on the basis of the STTK source code that is hosted on this GitHub repository.


#### Pulling the image from the Docker Hub

To pull the image from the Docker Hub, run:
```
docker pull nilskujath/sttk:<version>
```
Check by running `docker images`. An image named `nilskujath/sttk:<version>` should be listed, alongside any other images you might or might not have. 

#### Building image locally on the basis of the STTK source code

If you do not have a local copy of the STTK repository, run:
```
git clone https://github.com/NilsKujath/sttk.git
```
Then run `cd sttk` to get into the project file and run:
```
docker build -t nilskujath/sttk:<version> .
```
After the build finished, check by running `docker images`. An image named `nilskujath/sttk:<version>` should be listed, alongside any other images you might or might not have.


### Running the container and accessing a Jupyter Notebook from the browser

To run a docker container based on this image, run:
```
docker run -it \
  -p 8080:8080 \
  --name <container_name> \
  nilskujath/sttk:<version>
```
where `<container_name>` should be replaced by the desired container name, for example: `jupyter_container_11`, and `<version>` should be replaced by the desired version of the image, for example `nilskujath/sttk:0.1.0`.

Once inside the container, run:
```
jupyter notebook --ip=0.0.0.0 --port=8080 --allow-root
```

After exiting the container via typing `exit` in the container's command line, the container can now be fund in the list of containers that also includes those containers that are currently not running (accessible via `docker ps -a`). To start this container again, run:
```
docker start -ia <container_id OR container_name>
```

<!--## Extending STTK Research Tools -->




