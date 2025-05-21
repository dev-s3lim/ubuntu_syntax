#사용자 추가 및 비밀번호 지정
#그냥 권한 막히면 sudo ... 사용
sudo useradd newuser1
sudo passwd newuser1

#사용자 변경 : 변경하고자 하는 비밀번호
#sudo의 경우 현재 사용자의 비밀번호 입력
su - newuser1

#권한부여
chmod

u = 소유자
g = 그룹
o = 그외

r=4
w=2
x=1

rwx = 7
rw- = 6
r-x = 5
r-- = 4
-w- = 2
--x = 1

chmod 644 파일명 
chmod u+x 파일명
chmod u-x 파일명
chmod u=r 파일명

# 소유자 - 그룹 변경
chown newuser1:newuser1 파일명