# Week03 – htop 설치 및 실습

## 1. htop 설치
- `sudo apt install htop` 실행
- `htop --version` 결과 확인

## 2. 메모리 사용량 기준 정렬 실습
- MEM% 기준으로 정렬한 결과
- Firefox 관련 프로세스가 메모리 사용량이 가장 높았음

## 3. 프로세스 검색 실습
- F3 → 특정 프로세스 검색 화면

## 4. 프로세스 제어 실습(PID + kill)
- `sleep 2000 &`로 프로세스 생성
- htop에서 PID 확인
- F9(SIGNAL KILL)로 종료

## 5. 느낀 점
- htop을 통해 리눅스 프로세스 구조를 이해할 수 있었다.
- PID, CPU 사용량, 메모리 점유율 등을 시각적으로 확인할 수 있었음.

