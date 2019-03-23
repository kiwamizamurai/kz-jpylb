# kz-jpylb

This repository makes it easy to create an environment fot data-analysis via [Docker](http://www.docker.com/).

This is a base image 
- [Jupyter Notebook Data Science Stack](https://hub.docker.com/r/jupyter/datascience-notebook)

Some people reckon that such an environment is satisfied with JupyterNotebook or Colaboratory.
Yes. You have a good idea. However, the actual reason why I did such a hassle thing is for my comprehension of Docker.
I am just a one of learners. I wanna understand the usage of Docker. I think this is gonna be a great opportunity.
Thus, this is insufficient and inconvenient.

In addition, these are some references when creating this repository

- [Jupyter Data Science Stack + Docker in under 15 minutes](https://towardsdatascience.com/jupyter-data-science-stack-docker-in-under-15-minutes-19d8f822bd45)
- [ml-jupyterla](https://github.com/asashiho/ml-jupyterlab)
- [DockerでJupyterLabを構築する](https://qiita.com/muk-ai/items/a147cfd2cafc57420b15)
- [Running PostgreSQL using Docker Compose](https://linuxhint.com/run_postgresql_docker_compose/)
- [Docker + MySQLで開発環境用DBの作成](https://mmtomitomimm.blogspot.com/2018/04/docker-mysqldb.html)
- [MySQL & PostgreSQL with Docker in development - Episode #8](https://youtu.be/q5J3rtAGGNU)
- [Docker-Compose の変数定義について](https://qiita.com/kimullaa/items/f556431b8103e686f356)
- [Variables in Docker Compose](https://youtu.be/0JXyJOwVFfo)
- [第 4 回 Docker Compose を使った複数コンテナのデプロイ](https://www.ogis-ri.co.jp/otc/hiroba/technical/docker/part4.html)
- [Who is jovyan? #358](https://github.com/jupyter/docker-stacks/issues/358)
- [サーバーのDockerで起動したJupyter Notebookを他のパソコンからアクセスできるようにした話](https://qiita.com/yamasakih/items/d23ac0bf773e9b1b4d9d)

There are bunch of references because of my lack of competences. Anyway, Thank you very much.

# Directory Structure
```
kz-jpylb
    ├── Dockerfile            # Don't touch
    ├── work                  # This will contain jupyter-notebooks
    ├── README.md             # This is instruction manual
    └── docker-compose.yml    # Don't touch
```




## 1. Installing Docker
General installation instructions are
[on the Docker site](https://docs.docker.com/installation/), but we give some
quick links here:

* [OSX](https://www.docker.com/docker-mac)
* [Windows](https://www.docker.com/docker-windows)

### 2.1 Modify your own UID
Linux/MacOS:

    $ echo $UID
    501

After execute above  command, you should modify `.env.example` like, `UID=???`. Then, You should rename the file to `.env`.



>**[Note]**
>if you are useing 'Docker for Windows',you need to configuring [Shared Drives](https://blogs.msdn.microsoft.com/stevelasker/2016/06/14/configuring-docker-for-windows-volumes/)


### 2.2 run a new Docker container
Windows/Linux/MacOS:

    $ docker-compose up -d 


This container is CPU Only.If you want to use GPU, rebuilding GPU images requires [nvidia-docker](https://github.com/NVIDIA/nvidia-docker).
