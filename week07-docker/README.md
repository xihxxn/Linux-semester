# Week 07 – Docker 설치 및 컨테이너 실습

## 1. 설치
sudo apt install docker.io
docker --version
sudo systemctl enable docker
sudo systemctl start docker

## 2. 실습 내용
- hello-world 컨테이너 실행
- 컨테이너 목록 조회(docker ps, docker ps -a)
- 이미지 목록 조회(docker images)
- 컨테이너/이미지 삭제 명령어 실습

## 3. 이미지 vs 컨테이너 개념
- 이미지(Image): 프로그램 실행환경(OS 조각, 라이브러리, 설정)을 묶어둔 템플릿
- 컨테이너(Container): 이미지를 기반으로 실행된 독립적인 실행 환경
- 이미지 = 라면 봉지 / 컨테이너 = 끓여진 라면

## 4. 배운 점
- Docker가 환경 문제(“내 PC에서는 되는데 서버는 안 돼”)를 해결해 준다는 점
- 컨테이너가 가상머신보다 훨씬 빠르고 가볍다는 특징
- hello-world를 통해 Docker가 정상적으로 동작하는 과정 이해
- docker ps / images 명령으로 컨테이너 상태 확인 경험
