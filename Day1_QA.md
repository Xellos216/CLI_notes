### 📄 `Day1_QA.md`

```markdown
# Day1 QA - 초기 설정 관련 질문 모음

---

### ❓ Q1. `mkdir -p`의 의미는?
- 상위 디렉토리까지 한 번에 생성하라는 의미. 예: `mkdir -p a/b/c`

---

### ❓ Q2. OpenAI API 키는 쓸 때마다 새로 만들어야 해?
- 개인 테스트용은 재사용해도 되지만, 보안이나 프로젝트별 분리 필요 시 새로 생성하는 게 좋음.
- 키는 생성 직후만 전체 보이므로 꼭 복사해두기!

---

### ❓ Q3. `echo '...' >> .env` 명령어는 무슨 의미야?
- `echo`: 문자열 출력
- `>>`: 기존 파일 내용에 **덧붙이기**
- `.env`: 해당 파일의 끝에 문자열을 추가함

---

### ❓ Q4. Git 기본 브랜치가 master로 되어 있는데, main으로 바꾸는 법은?
```bash
git branch -m main

❓ Q5. GitHub 원격 저장소 주소를 SSH 방식으로 바꾸는 방법은?

git remote set-url origin git@github.com:Xellos216/CLI_notes.git


