# Week 09 – Redis 실습

## 🔥 Redis란?
Redis는 디스크가 아닌 RAM(메모리)에 데이터를 저장하는 초고속 Key-Value 데이터베이스이다. 일반적인 DB(PostgreSQL, MySQL)가 디스크 기반이라 상대적으로 느린 반면, Redis는 메모리 기반 구조 덕분에 수십~수백 배 빠르게 데이터를 처리한다. 이런 특성 때문에 실제 백엔드 서비스에서는 API 응답 캐싱, 로그인 세션 관리, 실시간 순위 처리 등 “빠른 데이터 접근”이 필요한 곳에 Redis를 캐시 서버로 활용한다.

## 📌 설치 & 실행
### 설치
sudo apt update
sudo apt install redis-server

### 상태 확인
sudo systemctl status redis    # running 확인 후 q로 종료

### Redis 접속
redis-cli

## 🧪 실습 명령어
SET username "xihxxn"      # 문자열 저장
GET username               # 저장된 값 조회
INCR counter               # 숫자 자동 증가
SET temp "bye" EX 5        # TTL 5초 설정된 캐시
GET temp                   # 5초 후 (nil) 반환됨
exit                       # 종료

## 💡 배운 점
- Redis는 메모리 기반이라 DB보다 매우 빠르게 작동한다.
- Key-Value 구조라 탐색과 조회가 단순하고 빠르다.
- EXPIRE(TTL)로 자동 만료 기능을 제공해 캐시 서버 역할에 적합하다.
- 실제 서비스에서 API 캐싱, 세션 저장, 실시간 데이터 처리 등 핵심 영역에서 널리 사용된다.
- 이번 실습의 SET/GET/INCR/TTL은 Redis 캐시 구조를 이해하는 핵심 기본 명령이다.
