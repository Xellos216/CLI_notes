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

### ❓ Q5. GitHub 원격 저장소 주소를 SSH 방식으로 바꾸는 방법은?

git remote set-url origin git@github.com:Xellos216/CLI_notes.git


좋아, 원래 네가 쓴 문장을 유지하면서 흐름과 표현을 매끄럽게 다듬어볼게.
**개념 설명과 명령어는 그대로 보존**하면서 문장만 정리했어:

---

### ❓ Q6. 나는 그냥 네가 하라는 대로 브랜치를 계속 `main`으로 바꿔서 쓰고 있는데, 원래는 `master`였잖아? 왜 `main`을 쓰는 거야?

이건 단순한 브랜치 이름 변경처럼 보일 수 있지만, 실제로는 **기술적 흐름과 문화적 배경이 함께 얽혀 있는 변화**야. 아래에 정리했어:


#### 1. 📜 과거에는 `master`가 기본 브랜치였음

Git이 처음 만들어졌을 때부터 기본 브랜치 이름은 `master`였고, GitHub나 GitLab 같은 플랫폼들도 모두 이를 기본으로 사용했어.


#### 2. 🌍 용어의 시대적 변화: `master` → `main`

`master`는 과거의 ‘주인–노예(master–slave)’ 구조를 연상시킨다는 이유로, 2020년 Black Lives Matter 운동 이후 다양한 개발 커뮤니티에서 용어를 개선하자는 논의가 활발히 진행됐어.
예를 들어:

* Python → master → main
* MySQL/PostgreSQL → master/slave → primary/replica


#### 3. 🔧 GitHub의 기본 브랜치가 `main`으로 바뀜

2020년 10월 이후 GitHub은 **새로 생성되는 저장소의 기본 브랜치**를 `master` → `main`으로 변경했어.
따라서 GitHub와 연동되는 프로젝트는 `main`으로 쓰는 게 더 자연스러워졌지.


#### 4. 🧘 브랜치 이름 통일은 협업 시 유리

브랜치 명칭이 통일돼 있으면, 여러 저장소를 관리할 때 `CI 설정`, `배포 스크립트`, `머지 전략` 등을 통일하기 쉬워져.
특히 협업 프로젝트에서는 `main`이 점점 사실상의 표준으로 자리잡고 있어.


#### 📌 요약

| 브랜치명     | 과거 기본    | 현재 추세  | 이유                   |
| -------- | -------- | ------ | -------------------- |
| `master` | ✅ 기본값이었음 | ⚠️ 구식됨 | 역사적 용어, GitHub 정책 변화 |
| `main`   | ❌ 비주류였음  | ✅ 권장됨  | 중립적 용어, 기본 설정 반영     |


#### ✅ 참고: 기본 브랜치를 항상 `main`으로 설정하는 명령어

```bash
git config --global init.defaultBranch main
```

이 설정을 해두면 `git init`을 실행했을 때 자동으로 `main` 브랜치로 시작하게 돼.

```bash
mkdir test-repo
cd test-repo
git init
git branch
# * main
```

---

필요하면 `~/.gitconfig` 파일에서 설정 확인 가능:

```bash
cat ~/.gitconfig
```

```ini
[init]
	defaultBranch = main
```


