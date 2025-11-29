# Week 10 – Nginx 실습

## 🔥 Nginx란?
Nginx는 고성능 웹 서버이자 Reverse Proxy 서버이다. 정적 파일을 매우 빠르게 제공할 수 있으며, 백엔드(Node.js, Python 등)가 직접 외부 요청을 받지 않고 Nginx가 대신 받아 전달하는 구조를 만든다. 이를 통해 보안 강화, 트래픽 분산(Load Balancing), HTTPS 인증서 처리, 서버 부하 감소 등 실 서비스 운영에서 중요한 역할을 맡는다.

## 📌 설치 & 기본 확인
### 설치
sudo apt update
sudo apt install nginx

### 실행 상태 확인
sudo systemctl status nginx    # running 확인 후 q로 종료

### 기본 페이지 테스트
curl http://localhost           # Welcome to nginx! 출력되면 성공

## 🧪 Reverse Proxy 실습
### 1) Node.js 서버 실행
node index.js                  # week04-node의 서버 실행 (3000 포트)

### 2) Nginx 설정 파일 열기
sudo nano /etc/nginx/sites-available/default

### 3) 아래 내용으로 location 블록 수정
location / {
    proxy_pass http://localhost:3000;
    proxy_set_header Host $host;
}

### 4) Nginx 재시작
sudo systemctl restart nginx

### 5) 테스트
curl http://localhost           # 이제 Node.js 서버 응답이 출력됨

## 💡 배운 점
- Nginx는 웹 서버 + Reverse Proxy로서 실무 서버 환경에서 거의 필수적으로 사용된다.
- Nginx 앞단에서 요청을 받고, 백엔드 서버로 전달하는 구조는 보안과 성능 모두 향상시킨다.
- Node.js 서버(3000번 포트)에 직접 접근하지 않고 80번 포트로 우회하는 구조를 배웠다.
- 서버 운영 시 HTTPS 인증, 정적 파일 제공, 로드밸런싱 등 다양한 역할을 수행할 수 있다.
