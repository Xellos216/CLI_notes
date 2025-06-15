#!/bin/bash

# .env 파일이 존재하면 환경변수로 로드
if [ -f .env ]; then
  export $(grep -v '^#' .env | xargs)
else
  echo ".env 파일을 찾을 수 없습니다."
  exit 1
fi 
