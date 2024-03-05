# software shinobi linux

## intro

I always wanted a custom build of Linux to call my own. This is that but dockerized and very incomplete. 

![software shinobi linux](docs/cover.png)

## features

* vim
* openssh server
* cmatrix

## quick start

get the code

```bash
git clone https://github.com/software-shinobi/software-shinobi-linux.git
```

navigate to code directory

```bash
cd software-shinobi-linux
```

build docker image

```bash
docker-compose build
```

start the container

```bash
docker-compose up -d
```

monitor running containers

```bash
docker ps
```

connect to the server

```bash
ssh -p 2222 developer@localhost
```

## namaste
