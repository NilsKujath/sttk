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


#### Git

For an installation guide, see [this](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).
Check your installation by running `git --version` which should return a version number `>= 2.45.2`.


#### GitHub CLI

See [GitHub's website](https://cli.github.com/).
Check your installation by running `gh --version` which should return a version number `>= 2.52.0`.



