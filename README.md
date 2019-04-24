# omdbmovierating
To fetch omdb movie rating using api 

Steps To Use This Repo:

download file.sh and Dockerfile from repo
git clone https://github.com/srinikarkarthik/omdbmovierating.git
go to downloaded repo and check files 
run below cmd to build the docker image named movierating using the files file.sh and Dockerfile
docker build -t movierating .
Up container using the image file we have created movierating and pass the argument movie name to know its rating
syntax : docker run -it <imagename> <arguments to be passed to shell>
docker run -it movierating "rotten"
