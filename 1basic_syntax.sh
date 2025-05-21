#현재 위치 경로 출력
pwd

#현재 위치에서 파일 및 폴더 조회
ls

#현재 위치에서 목록 조회 자세히
ls -l

#현재 위치에서 숨긴 목록까지 조회 자세히
ls -al

#현재 위치에서 숨긴 목록까지 조회 자세히 오래된 순으로 정렬
ls -alrt

#현재 위치에서 숨긴 목록까지 조회 자세히 최신 순으로 정렬
ls -alt

#디렉토리 생성
mkdir

#특정 디렉토리로 이동
cd foldername

#상위 디렉토리로 이동
cd ..
#또는
cd ../

#루트 디렉토리 (최상위 디렉토리)로 이동
cd /

#직전 폴더로 이동
cd -

#홈 (/home/본인 계정)경로로 이동
cd

#상대경로
cd/../..

#절대경로


#2일차#

#비어있는 파일 만들기
touch first_file.txt

#파일 내용을 터미널 창에 출력
cat first_file.txt

#파일 내용을 상위 10줄 출력
head first_file.txt

#파일 내용을 하위 10줄 출력
tail first_file.txt

#파일 내용을 상위 n줄 출력
head -n 숫자 first_file.txt

#파일 내용을 하위 n줄 출력
tail -n 숫자 first_file.txt

#파일 내용 실시간 조회
tail -f first_file.txt

#파일내용 편집기
nano
vi

#도스키 위/아래를 통해 이전 명령어 조회
#히스토리
history

#현재 명령어 내역 정리 (보이는 상태만 정리)
clear

#컨트롤 + C 로 입력명령어 취소

#파일 삭제
rm first_file.txt

#폴더째 삭제
rm -r test

#터미널창에 문자열 출력 (쌍따옴표)
echo "메시지 내용"

#파일에 입력하는 목적으로도 사용
echo "hello world" > first_file.txt #덮어쓰기
echo "hello world" >> first_file.txt #다음줄에 추가

#복사명령어
#cp 복사대상 복사될파일명
cp 1_file.txt 2_file.txt
cp 1_file.txt ../2_file.txt

#폴더 복사시에는 -r 옵션
cp -r abc ../abc

#grep : 파일 내에서 문자열 찾기
#r : 모든 디렉토리 내
#n : 라인 수 출력
#i : 대소문자 구분 무시
grep -rni "hello"

#find : 이름으로 파일 또는 디렉토리 찾기
find . -name "*.txt"
find . -type f,d,l,b,c

#find 와 grep 혼용 2가지 방식
find . -name "*.txt" | xargs grep -rni "hello"
find . -name "*.txt" -exec grep -rni "hello" {} \;
find . -name "*.txt" -exec {} ./testFolder/ \;
find . -name "*.txt" -exec echo {} \;

# 타입은 파일, 이름은 first로 시작하고, 그 파일들 안에 "hello" 키워드가 들어간 문구, 문장 찾기
find . -name "first*" -type f | xargs grep -rni "hello"

