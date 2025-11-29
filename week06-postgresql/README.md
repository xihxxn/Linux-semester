# Week 06 – PostgreSQL 설치 및 실습

## 1. PostgreSQL 설치
리눅스에서 아래 명령어로 설치했다.

sudo apt install postgresql postgresql-contrib

설치 후 서비스 상태 확인:
sudo systemctl status postgresql

## 2. psql 접속 및 데이터베이스 생성
postgres 계정으로 접속:
sudo -i -u postgres

PostgreSQL 쉘 접속:
psql

데이터베이스 생성:
CREATE DATABASE testdb;

## 3. 테이블 생성 및 데이터 삽입
테이블 생성:
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT,
    age INT
);

데이터 삽입:
INSERT INTO users (name, age) VALUES ('xihxxn', 21);
INSERT INTO users (name, age) VALUES ('jiwoo', 24);
INSERT INTO users (name, age) VALUES ('minsu', 30);

조회:
SELECT * FROM users;

## 4. 배운 점
- PostgreSQL은 SQL 표준을 가장 잘 지키는 강력한 RDBMS이다.
- SERIAL PRIMARY KEY를 통해 자동 증가하는 고유 ID가 생성되는 방식 이해.
- \l, \dt, \q 등 psql 전용 명령어 익힘.
- 백엔드 개발에서 DB가 반드시 필요한 이유 체감.
