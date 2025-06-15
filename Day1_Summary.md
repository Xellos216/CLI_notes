# Day1 Summary - 프로젝트 초기 설정

## ✅ 주요 개념 정리

- `.env` 파일: API 키 등 민감한 환경변수를 외부에 노출하지 않기 위한 설정 파일
- `load_env.sh`: `.env`의 내용을 Bash 환경변수로 export하여 사용할 수 있게 함
- `.gitignore`: Git 버전 관리에서 제외할 파일 지정 (.env, logs/ 등)
- Git 초기화 및 브랜치 설정 (`main`)

## ✅ 폴더 및 파일 구조

CLI_notes/
├── scripts/
│ └── load_env.sh
├── notes/
├── logs/
├── .env
├── .gitignore
├── GUIDE.md


## ✅ 실행한 주요 명령어

```bash
mkdir -p CLI-notes/{scripts,notes,logs}
cd CLI-notes
touch .env
echo 'OPENAI_API_KEY="sk-..."' >> .env

nano scripts/load_env.sh
chmod +x scripts/load_env.sh

nano .gitignore
git init
git add .
git commit -m "Day1: 초기 설정 완료 - 폴더 구조, .env, load_env.sh, .gitignore"
git branch -m main
git remote add origin git@github.com:Xellos216/CLI_notes.git
git remote set-url git@github.com:Xellos216/CLI_notes.git
git push -u origin main


