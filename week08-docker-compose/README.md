# Week 08 – Docker Compose로 PostgreSQL + Adminer 실행 실습

## 📌 1. 설치 및 실행

### docker-compose.yml 준비
PostgreSQL + Adminer(웹 기반 DB 관리 툴)를 동시에 실행하기 위한 설정 파일 작성 후 아래 명령으로 실행:

```bash
sudo docker-compose up -d
```

### 상태 확인
```bash
sudo docker ps
```

---

## 📌 2. Adminer 접속

브라우저에서 접속:

```
http://localhost:8080
```

로그인 정보:
- 시스템: PostgreSQL  
- 서버: db (또는 localhost)  
- 사용자: xihxxn  
- 비밀번호: 1234  
- 데이터베이스: testdb  

---

## 📌 3. 데이터베이스 조작 실습 (SQL 실행)

### 테이블 생성

```sql
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INT
);
```

### 데이터 삽입

```sql
INSERT INTO users (name, age)
VALUES ('sihyun', 22),
       ('xihxxn', 23);
```

### 데이터 조회

```sql
SELECT * FROM users;
```

---

## 📌 4. 결과

`query-result.txt` 파일에 SELECT 결과 저장:

```
 id |  name   | age
----+---------+-----
  1 | sihyun  | 22
  2 | xihxxn  | 23
```

**스크린샷 목록**
- screenshots/adminer-login.png  
- screenshots/adminer-users-table.png  

---

## 📌 5. 배운 점

- Docker Compose로 여러 서비스를 하나의 구성 파일로 관리할 수 있음을 배움.
- PostgreSQL과 Adminer가 동일 네트워크에서 자동 연결되는 구조를 이해함.
- 로컬 PostgreSQL과 Docker PostgreSQL이 포트(5432) 충돌을 일으킬 수 있음을 직접 경험함.
- Adminer를 통해 컨테이너 내부 DB를 GUI로 다루는 것이 편리하다는 점을 느낌.
- 실제 서버 환경에서도 **DB는 컨테이너로 분리해 운영**하는 것이 일반적이라는 개념을 익힘.

---
