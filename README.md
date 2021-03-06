# kz-jpylb

[![Version](https://img.shields.io/badge/version-v2.1.1-blue.svg)]()
[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://github.com/kiwamizamurai/kz-jpylb/blob/d5ed93cd042dc80582cf037a909a0c0bc80824da/LICENSE)
[![Python](https://img.shields.io/badge/python-v3-green.svg)]()
[![Python](https://img.shields.io/badge/docker-v3-green.svg)]()
<br>

This repository makes it easy to create an environment fot data-analysis via [Docker](http://www.docker.com/).

This is a base image 
- [Jupyter Notebook Data Science Stack](https://hub.docker.com/r/jupyter/datascience-notebook)

Some people reckon that such an environment is satisfied with JupyterNotebook or Colaboratory.
Yes. It's exactly as you thought. However, the actual reason why I did such a hassle thing is for my comprehension of Docker.
I am just a one of learners. I wanna confirm if I apprehend the usage of Docker. I think this is gonna be a great opportunity.
As I said, however, I am still a beginner. It means there might be some mistakes. 
Thus, If you have some advice or request, please feel free to leave [issues](https://github.com/kiwamizamurai/kz-jpylb/issues).

Actually, these has nothing to do with this repository, I listed up some useful and pragmatic references when creating this repository as follows:
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
- [MySQL and PostgreSQL with Docker in Development](https://devteds.com/episodes/8-mysql-and-postgresql-with-docker-in-development)
- [The server requested authentication method unknown to the client (PHP)](https://stackoverflow.com/questions/52364415/the-server-requested-authentication-method-unknown-to-the-client-php)

There are bunch of references because of my lack of competences. Anyway, Thank you very much.

# Directory Structure
```
kz-jpylb
    ┣ work
    ┃   ┣ test1.ipynb        # Example Notebook_01
    ┃   ┗ test2.ipynb        # Example Notebook_02
    ┣ juoyter                # Jupyter Stuffs
    ┃   ┗ Dockerfile
    ┣ kzdb                   # Database Stuffs
    ┃   ┣ ...
    ┃   ┗ kzbase             # Example Table
    ┣ README.md              # Instruction Manual
    ┣ LICENSE
    ┣ my.conf
    ┣ .env.example           # You have to modify, look at a detail below
    ┣ .gitignore
    ┗ docker-compose.yml
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
    501  (yours might be different from mine)

After executing above command, you should follow the instructions:
1. Open `.env.example`
2. Modify `UID=501`  (this number was acquired above)
3. Rename `.env.example` to `.env`

That's all.


### 2.2 run a new Docker container
Windows/Linux/MacOS:

    $ docker-compose up -d 
 
This container setup   
```    
Package            Version    
------------------ --------
beautifulsoup4     4.7.1   
conda              4.6.8  
matplotlib         3.0.3   
numpy              1.15.4  
pip                19.0.3  
requests           2.21.0 
scikit-image       0.14.2  
scikit-learn       0.20.3  
scipy              1.2.1   
seaborn            0.9.0  
SQLAlchemy         1.3.1 
urllib3            1.24.1  
xgboost            0.82

etc...
```

### 3 How to use Jupyter Lab
Copy/paste this URL into your browser when you connect for the first time,

    http://localhost:8888/lab/?
    
if you want to use Jupyter-Notebook
    
    http://localhost:8888/?
    
    
### 4 How to use DataBase
Copy/paste this URL into your browser when you connect for the first time,

    http://localhost:8080/

Or, You can also use database as follows:

    $ docker-compose exec mysql-kz mysql -uroot -ppassword kzbase


    
    
### 5 End a Docker container
Windows/Linux/MacOS:

    $ docker-compose down

This container is CPU Only.If you want to use GPU, rebuilding GPU images requires [nvidia-docker](https://github.com/NVIDIA/nvidia-docker).
