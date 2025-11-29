# Linux-semester – Weekly Linux App Installation & 실습 모음

Linux 환경에서 매주 하나씩 개발 도구 또는 서버 프로그램을 설치하고 실습한 결과물을 정리한 프로젝트입니다.  
각 주차는 해당 주차의 설치 앱, 실습 코드, 명령어 기록 등을 포함합니다.

## 📁 폴더 구조
```
Linux-semester/
├── curl/
├── week02-git/
├── week03-htop/
├── week04-node/
├── week05-python/
├── week06-postgresql/
├── week07-docker/
├── week08-docker-compose/
├── week09-redis/
├── week10-nginx/
├── week11-zsh/
└── week12-code-server/
```

## 📌 Week Summary

## 🌐 curl 기본 사용법 (추가)
서버 개발 및 API 테스트에 필수적으로 사용되는 명령줄 HTTP 클라이언트 도구.

```
curl http://example.com              # 기본 GET 요청
curl -I http://example.com           # 헤더만 조회
curl localhost:3000                  # 로컬 서버 응답 확인
curl "localhost:3000/greet?name=xihxxn"
```

Express, Nginx reverse proxy 테스트에서도 curl로 응답을 검증함.

---

### **Week 01 – Linux 설치**
- UTM 가상 머신에 Ubuntu 설치  
- 기본 패키지 업데이트 및 환경 점검  
  ```bash
  sudo apt update && sudo apt upgrade -y
  uname -a
  lsb_release -a
  ```

---

### **Week 02 – Git**
- Git 설치 및 사용자 정보 설정  
- 로컬 프로젝트 Git 초기화  
- 원격 저장소 연결  
- add → commit → push 전체 흐름 실습  
- 브랜치 생성 → 병합 실습

---

### **Week 03 – htop**
- 시스템 모니터링 도구 설치  
- CPU/메모리/프로세스 실시간 확인  
- PID·kill 명령어 실습

---

### **Week 04 – Node.js & Express**
- Node.js + npm 설치  
- Express 기반 간단한 HTTP 서버 구현  
- curl로 라우트 및 API 응답 테스트

---

### **Week 05 – Python3 & pip**
- Python3 / pip 설치  
- venv 가상환경 생성/활성화  
- requests 라이브러리로 API 호출  
- JSON 파일 저장/불러오기 스크립트 작성

---

### **Week 06 – PostgreSQL**
- postgresql / postgresql-contrib 설치  
- psql 접속  
- CREATE DATABASE / CREATE TABLE  
- INSERT / SELECT 테스트

---

### **Week 07 – Docker**
- Docker Engine 설치  
- hello-world & ubuntu 컨테이너 실행  
- docker ps / docker images / docker run 실습

---

### **Week 08 – Docker Compose**
- docker-compose 설치  
- PostgreSQL + Adminer 멀티 컨테이너 구성  
- Adminer 웹에서 DB 접속 테스트

---

### **Week 09 – Redis**
- redis-server 설치  
- redis-cli로 SET/GET/TTL 실습  
- 캐시 동작 방식 체험

---

### **Week 10 – Nginx**
- Nginx 설치  
- 기본 웹 페이지 확인  
- Node.js 서버에 Reverse Proxy 연결  
- 설정 수정 후 nginx 재시작

---

### **Week 11 – zsh & oh-my-zsh**
- zsh 설치 후 기본 쉘 변경  
- oh-my-zsh 설치  
- 테마 및 플러그인 적용  
- 자동완성 및 git 상태 표시 기능 체험

---

### **Week 12 – VS Code Server (code-server)**
- code-server 설치  
- config.yaml 설정  
- 브라우저 접속 → 원격 VS Code 환경 사용  
- http://localhost:9000 에서 개발 환경 구축

---

## 🔗 저장소 사용 방법
```
git clone https://github.com/xihxxn/Linux-semester.git
cd Linux-semester
```

각 주차 폴더에 들어가 실습 내용을 확인할 수 있습니다.
