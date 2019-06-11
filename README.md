# 키사 핀테크 아카데미 중급 블록체인

### DAY01
펍피? 대표 박정후
1. 블록체인 소개 ~ 이더리운 실습
- metamask.io를 통한 지갑 생성
    blouse autumn guide tonight alter despair ensure civil outer cluster rose various
- metamask를 이용해서 ropstan 테스트넷에 연결 이후 이더 받기를 통해 이더를 받는다. => 토큰 생성에는 이더리움이 필요하기 때문에 받아야한다.

### 블록체인은 신뢰의 기술
- 위변조 어려움, 공개성
- pow(작업증명=>H/W연산), pos(지분 증명=>코인을 많이 갖고 있으면 더 많이 얻는다.), dpos(위임지분증명=>ex)스팀)
- 기존거래와의 차이점 

### 블록체인 흐름과 프로젝트 진행 방법
- WWW -> 모바일 -> 블록체인 펀딩을 받기 쉬워서 많은 참여를 했다.(아이디어를 백서를 배포해서 투자 글로벌하게 받을 수 있다.)
- 중간 거래상 제거, 투명화가 필요한 사업에 많이 사용된다.

- ex)아하 => 지식공유 플랫폼 , 스팀인터 => 스팀관련것 이런것들 참고하면 좋다.
- 태라(루나) -> 블록체인 결제 서비스

### 블록체인 기술은 어디에 쓰일 수 있을끼?
- 컨텐츠를 가치있게 하는 곳에 특히 유용하게 쓰일 수 있다. 

### DAY 01 현재까지 토큰을 개발했지만 value을 만든 것은 아니다.
### 이더리움
- 스마트 컨트랙트 => 블록체인 2.0
- POW이지만 POS로 가려는 노력 중

### solidity
- external은 외부컨트랙트에서만 호출할 수 있다. 또한 상태변수는 external이 될 수 없다.
- internal은 상태변수는 기본적으로 internal 이다. 내부 컨트랙트에서만 호출 가능

## ubuntu 16 LTS server 설정
ssh test@192.168.... yes 비밀번호
- test , test , test

sudo apt-get update
sudo apt-get install build-essential libssl-dev
sudo apt-get install openssh-server
ssh localhost

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

source ~/.bashrc
nvm ls-remote
nvm install 8.10.0  => Node 설치 8버전
nvm alias default 8.10.0
nvm ls
source ~/.bashrc

sudo apt-get install vim
npm install -g truffle => 트러플 설치!

?npm install -g ganache-cli  => ganache-cli 명령어 치면 실행됨 but여기서는 그렇게 안하는듯 8545번으로 실행된다.

sudo apt-get install software-properties-common
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install ethereum => ethereum 추가

mkdir blockchain
cd ./blockchain
puppeth
>mynetwork
>2 =>genesis block create
>1
>1
>0x => 써져있음 그냥 enter
>
>4368 => networkID 설정 쓰면 안되는 ID가 있다.
>2
>2
>

geth -datadir . init mynetwork.json => geth genesis를 통해 초기화

geth -datadir . account new -> 비밀번호 입력 확인  => 지갑 생성

#Sanitizing cache to Go's GC limits >>>>>>>>>--lightkdf Reduce key-derivation RAM & CPU usage at some expense of KDF strength

geth --networkid 4368 --mine --minerthreads 1 --datadir "./" --nodiscover --rpcport 8545  --rpccorsdomain "*" --nat "any" --
rpcapi db,eth,net,web3,personal --unlock 0 --password "./password.sec"

=>내 프라이빗 노드에서 mining을 하는 명령어 테스트넷에서는 마이닝이 굳이 필요없기 때문에 안 사용할 수 도 있다. 

geth --testnet --syncmode fast --rpc --rpcapi db,eth,net,web3,personal --cache=1024 --rpcport 8545 --rpcaddr 127.0.0.1 --rpccorsdomain "*" => 테스트넷 연결 명령어 70기가 이상 필요로 bad peer 에러 발생


### IDE => ATOM으로 한다. vscㅠ => ftp 페키지 사용할 줄 알면 vsc 사용할 수 있다.




