#!/bin/bash

# notes 디렉토리 확인 및 생성
NOTES_DIR="$(dirname "$0")/../notes"
mkdir -p "$NOTES_DIR"

# 인자 확인
if [ -z "$1" ]; then
  echo "❗ 사용법: ./scripts/create_note.sh \"노트 제목\""
  exit 1
fi

TITLE="$1"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
FILENAME="${TIMESTAMP}_${TITLE// /_}.md"
FILEPATH="$NOTES_DIR/$FILENAME"

# 사용자로부터 내용 입력
echo "📝 노트 내용을 입력하세요. (Ctrl+D로 종료)"
cat > "$FILEPATH"

echo "✅ 노트가 저장되었습니다: $FILEPATH"
