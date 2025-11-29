# Week 12 – code-server 설치 & 원격 VS Code 환경 구축

## 1. 설치
```bash
curl -fsSL https://code-server.dev/install.sh | sh
systemctl --user enable code-server
systemctl --user start code-server
systemctl --user status code-server
```

## 2. 설정 파일 확인
code-server는 아래 경로에 기본 설정 파일을 생성한다.
```
~/.config/code-server/config.yaml
```
예시:
```
bind-addr: 127.0.0.1:9000
auth: password
password: ********
cert: false
```

## 3. 접속 테스트
브라우저에서 접속:
```
http://localhost:9000
```
- 비밀번호 입력 → VS Code 웹 버전 실행됨  
- 로컬 VS Code를 열지 않아도 웹 브라우저만 있으면 어디서든 개발 가능

## 4. 배운 점
- code-server는 **브라우저에서 VS Code를 그대로 실행하는 기술**임  
- 서버와 개발 환경을 완전히 분리할 수 있어 실제 DevOps 환경에서도 활용됨  
- systemctl을 사용해 서비스 형태로 실행/자동 시작을 설정하는 법을 익힘  
- config.yaml을 통해 포트·비밀번호·보안 설정을 커스터마이징할 수 있다는 점 이해함
