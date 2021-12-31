git init
git add .
git commit -m "first commit"
git branch -M master
git remote add origin https://github.com/hwalanlee/docker-nodejs.git
git push -u origin master

git add . && git commit -m "commit" && git push origin master

>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

도커 이미지 빌드
    > docker build -t 이미지명 .

run vs start 차이
    > docker run IMAGE_ID
        > run : 새로운 컨테이너를 이미지로부터 만듦 = creat + start
            > 예: docker run -d --name docker-nodejs-container(컨테이너명) -p 3000:3000 docker-nodejs(이미지명)
    > docker start CONTAINER_ID
    > docker stop CONTAINER_ID
        > start, stop : 기존에 실행되었던 컨테이너를 중지시키거나 실행시킴
도커 실행 관련
    > docker start 컨테이너 id
    > docker stop 컨테이너 id

컨테이너 cli
    > docker exec -it (컨테이너 ID) /bin/sh
        > sh 접속
    > docker container exec CONTAINER_ID ls (pwd 등)
        > 밖에서 개별 명령어

컨테이너 조회
    > docker ps 
        > 가동 중인 컨테이너만 조회
    > docker ps -a
        > 중단된 컨테이너까지 모두 조회
    > docker ps --no-trunc
        > 줄임표 없이 모두 출력

컨테이너 삭제
    > docker container prune
        > 중단된 모든 컨테이너 삭제
    > docker rm 컨테이너명
        > -f 옵션 - 실행 중인 컨테이너도 삭제



>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

> docker -v
> docker pull {이미지명}:{태그}
    > 예: docker pull python:3
>>> docker images 
> docker create {옵션} {이미지명}:{태그}
    > 컨테이너 생성하기
    > 예: docker create -it python
>>> docker start {컨테이너 id 또는 이름}
    > 컨테이너 시작하기
>>> docker attach {컨테이너 id 또는 이름}
    > 컨테이너에 접속하기(cli 이용)
> Ctrl + P, Q
    > 컨테이너 쉘에서 빠져나오기
> docker stop $(docker ps -aq) && docker system prune -a
    > 모든 컨테이너 중지 && 사용되지 않는 모든 도커 요소(컨테이너, 이미지, 네트워크, 볼륨 등) 삭제