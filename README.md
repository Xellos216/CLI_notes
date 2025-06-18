## ✅ `GUIDE.md`: Mini Project GuideLine (CLI 기반 학습 노트 관리 도구)

```markdown
# 🛠️ CLI 기반 학습 노트 관리 및 요약 도구 - 프로젝트 가이드라인

이 프로젝트는 Bash 기반 CLI 환경에서 학습 노트를 효율적으로 관리하고, OpenAI GPT API를 연동하여 요약 및 질의응답 기능을 제공하는 도구를 만드는 것이 목표입니다. 각 단계는 날짜 기반(`Day_1`, `Day_2`, ...)으로 나누어 진행합니다.

---

## 📌 프로젝트 개요

- **주 실행 환경**: Linux/WSL (Bash)
- **사용 기술**: Bash Script, OpenAI API (curl + jq), Git, Docker
- **선택 기술**: Python (필요 시)
- **목표 기능**:
  - 학습 노트 생성/조회
  - GPT 요약/질의응답
  - 로그 기록
  - Docker 컨테이너화
  - GitHub 연동

---

## 📅 단계별 실습 진도표

### ✅ Day 1: 프로젝트 초기 설정
- [ ] 프로젝트 디렉토리 구조 생성 (`scripts/`, `notes/`, `logs/`, `.env`, `README.md`)
- [ ] `.env` 파일 생성 및 API 키 입력
- [ ] `scripts/load_env.sh` 작성 및 권한 부여
- [ ] `.gitignore` 작성 및 Git 초기화

---

### ✅ Day 2: 노트 생성 기능 구현
- [ ] `scripts/create_note.sh` 작성
  - 제목 인자 받고 타임스탬프 파일로 저장
  - 입력은 `cat >` 방식 사용
- [ ] 실행 권한 부여 및 테스트
- [ ] 예시 노트 생성해보기

---

### ✅ Day 3: 노트 조회 기능 구현
- [ ] `scripts/view_notes.sh` 작성
  - 인자 없을 때 목록 출력
  - 파일 이름 또는 키워드로 내용 출력
- [ ] 예시 노트 파일 여러 개 생성 후 검색 테스트

---

### ✅ Day 4: GPT 요약/질의응답 기능
- [ ] `scripts/ask_gpt.sh` 작성
  - `curl`로 GPT API 호출
  - 응답 `logs/`에 저장
- [ ] 입력 프롬프트는 인자 또는 `cat` 활용
- [ ] 노트 기반 요약, 일반 질문 모두 테스트

---

### ✅ Day 5: Docker 컨테이너화
- [ ] `Dockerfile` 작성 (Ubuntu 기반)
- [ ] 패키지 설치: `curl`, `jq`
- [ ] 스크립트 실행 테스트
- [ ] `.env.example` 제공
- [ ] `docker build` 및 `docker run` 테스트

---

### ✅ Day 6: README.md 문서 정리
- [ ] 프로젝트 개요 / 기능 설명
- [ ] 설치 및 사용법
- [ ] Docker 사용 예시
- [ ] 예제 명령어 정리

---

### ✅ Day 7+: 리팩토링 & 확장 기능 (선택)
- [ ] `create_note.sh`에 중복 방지, 에러 처리 추가
- [ ] GPT 요약 형식 선택 옵션 (요약/키포인트 등)
- [ ] Python 버전 CLI 병행 구현
- [ ] 노트 삭제, 수정 기능 추가
- [ ] `fzf` 기반 인터랙티브 CLI 구성
- [ ] Github Actions로 테스트 자동화

---

## 💡 기타 팁

- 각 Day는 개별 채팅 세션으로 나눠 관리
- 프롬프트는 `Day_X: 내용 요약` 형식으로 통일
- 진도에 따라 `GUIDE.md`에 체크박스 갱신

---

## 🗂️ 프로젝트 디렉토리 구조 예시

```

learning-note-cli-tool/
├── scripts/
│   ├── load\_env.sh
│   ├── create\_note.sh
│   ├── view\_notes.sh
│   └── ask\_gpt.sh
├── notes/
├── logs/
├── .env
├── .env.example
├── .gitignore
├── Dockerfile
├── README.md
└── GUIDE.md ← 이 파일

```
