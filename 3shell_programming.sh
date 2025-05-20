#쉘 스크립트 (확장자는 반드시 .sh)
touch myscript.sh
nano myscripts.sh
echo "hello world"
chmod u+x myscript.sh

#스크립트 실행
./myscript.sh

#if문

if [ 1 -gt 2 ]; then
    echo "hello world 1"
else
    echo "hello world 2"
fi

#변수 선언 및 파일 디렉토리 검사 (기존)
if [ -f "first_file.txt" ]; then
    echo "first_file.txt file doesn't exist"
fi

#변수 선언 한다면
file_name=first_file.txt

if [ -f "$file_name" ]; then
    echo "first_file.txt file doesn't exist"
else
    echo "first_file.txt file exist"
fi

#for문 (java)
for (int i = 0; i = n; i++){
    print(i);
}

#for문 (shell)
for a in {1..100}
do
    echo "hello world $a"
done

#for문과 파일/디렉토리 목록조회
for a in *
do
    echo "$a"
done

#for문의 변수값을 증가
count=100;
for a in {1..100}
do
    let count=count+1
done
echo "Your count value is $count"



#for문 및 변수값 세팅 활용 (현재 폴더에서 파일개수와 디렉토리 갯수 계산)
file_count=0 #파일 카운팅 변수
dir_count=0  #디렉토리 카운팅 변수

for a in * #현재 디렉토리/파일 조회 기능 (a 라는 변수도 활성화)
do
    if [ -f "$a" ]; then # 만약, 변수 a가 -f (파일 타입)일 경우
        let file_count=file_count+1 # 0 = 0 + 1
    else
        let dir_count=dir_count+1   # 0 = 0 + 1
    fi
done

echo "Your file count is $file_count"
echo "Your directory count is $dir_count"