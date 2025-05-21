#프로세스 목록조회
ps -ef
ps -ef | grep "ngnix"

#패키지 관련
#yum : redhat계열 패키지관리도구
#apt 또는 apt-get : 데비안 계열
#패키지 목록 최신화
sudo apt update

#nginx 설치
sudo apt install nginx
sudo apt install (인터넷에서 찾은 약속된 명령어)

#프로그램 실행관리 도구: systemctl
sudo systemctl stop nginx
sudo systemctl start nginx

#프로세스 강제종료
sudo kill -9 프로세스ID (PID)

#네트워크 관련 명령어
#로컬 ip 정보 조회
ifconfig

#특정 도메인이 ip 주소 정보 조회 : 도메인을 dns 에 문의하여 ip로 전환
nslookup naver.com

#네트워크 연결상태 조회
#일반적으로 ping은 보안상 막아두고 있음
ping IP주소
ping 8.8.8.8

#ip와 포트를 이용해 특정 프로그램의 이용가능상태까지 조회
#일반적으로 telnet이 막혀있거나, 사용하기를 권장하지는 않음 (대부분 상대측에서 막아놓음)
telnet IP주소 포트번호 (서버가 살아있는지? 또는 이용가능한지?)

nc -zv IP주소 (또는 도메인) 포트번호 #(http: 80, https :443)

# 원격 젒속 22port (다만 서버 소유자가 22포트를 활성화 시켜놓아야 함)
ssh -i 계정명@도메인주소(또는 ip주소) 키값(AWS serial key)

# 원격 파일 접송 22port
scp 전송하고자 하는 파일 원격지 주소