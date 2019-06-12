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

### DAY 02

### solidity
- external은 외부컨트랙트에서만 호출할 수 있다. 또한 상태변수는 external이 될 수 없다.
- internal은 상태변수는 기본적으로 internal 이다. 내부 컨트랙트에서만 호출 가능 상속 받은 놈도 호출 가능, 상태변수는 기본 internal
- private은 컨트랙트 내부에서만 접근이 가능하며 맨앞에 _붙이는게 관례이다.
- enum은 c언어의 이넘과 비슷하며 enum Direction {Right, left} => Right는 0 , left는 1 이다.
- 함수 타입 제어자 : view(read only gas비용 없음) , pure(읽지않고 인자값만 활용 gas비용 없음, 메모리에서만 되기에 블록체인 저장x) , payalbe(함수가 이더를 받는다. gas사용)
- 참조 타입 : storage( like hdd), memory(like ram)

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
nvm install 8.10.0  //=> Node 설치 8버전
nvm alias default 8.10.0
nvm ls
source ~/.bashrc

sudo apt-get install vim
npm install -g truffle => 트러플 설치!

이건 실습에서 안함 =? npm install -g ganache-cli  => ganache-cli 명령어 치면 실행됨 but여기서는 그렇게 안하는듯 8545번으로 실행된다.

sudo apt-get install software-properties-common
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install ethereum //=> ethereum 추가

mkdir blockchain
cd ./blockchain
puppeth
- $>mynetwork
- $>2 =>genesis block create
- $>1
- $>1
- $>0x => 써져있음 그냥 enter
- $> 그냥 enter
- $>4368 => networkID 설정 쓰면 안되는 ID가 있다.
- $>2
- $>2
- $> 그냥 enter

geth -datadir . init mynetwork.json //=> geth genesis를 통해 초기화

geth -datadir . account new //-> 비밀번호 입력 확인  => 지갑 생성

#Sanitizing cache to Go's GC limits >>>>>>>>>--lightkdf Reduce key-derivation RAM & CPU usage at some expense of KDF strength

geth --networkid 4368 --mine --minerthreads 1 --datadir "./" --nodiscover --rpcport 8545  --rpccorsdomain "*" --nat "any" --rpcapi db,eth,net,web3,personal --unlock 0 --password "./password.sec"
//=> 주의! password.sec 있는 곳에서 실행 할 것!

//=>내 프라이빗 노드에서 mining을 하는 명령어 테스트넷에서는 마이닝이 굳이 필요없기 때문에 안 사용할 수 도 있다. 

geth --testnet --syncmode fast --rpc --rpcapi db,eth,net,web3,personal --cache=1024 --rpcport 8545 --rpcaddr 127.0.0.1 --rpccorsdomain "*" 
//=> 테스트넷 연결 명령어 70기가 이상 필요로 bad peer 에러 발생

### 이더리움은 가스다? 가스 == 수수료
1. 다른 계정으로 돈으로 돈을 보낼때
2. 스마트 컨트랙트 배포 할떄
3. 함수에서 상태 변수에 변화를 줄 때
4. 등등
Ddos공격, 루프문을 통해서 성능 저하를 막고자 가스 개념이 생겼고 이오스랑 이더리움이랑 개념이 다르다.

### 가스 비용은?
- 가스는 코드의 복잡성에 따라 다르다.(산술, 로직, memory, storage) <= 옵코드 라 하고 각각에 따라 가격이 다르다. 
- 네트워크 상태, 컴퓨팅 자원에 따라 다르다.


### truffle test
- mkdir truffleTest
- cd ./truffleTest
- truffle init  //=> truffle 초기화 -> 마이그레이션 및 여러 파일 생성 
- //=> contract 코드 작성, migrations-> 2_deploy_contract.js 작성(!주의 규칙 1_ , 2_ , 3_ 이런식으로 늘려가면서 추가해야된다.)
- truffle console or truffle develop
- $ > migrate 
- !ERROR 배포 중  $ > migrate compile -all --reset
- truffle-config.js //=> development 주석 해제 하고 ip 입력!
- truffle console --network development
- #> migrate    //=>하면 가나슈에서 LOG를 통해 확인할 수 있다.

### DAY 03

### Infura 를 통한 ropsten 테스트넷 연결하기!
=>이더 싱크를 항상 맞추어야 되는데 infura가 프로바이더를 통해 받아서 처리를 해준다.  , 첫번째 지갑에서 이더가 빠져나간다. 만약 erc20을 발행하면 맵핑되서 저장된다.
- Dapp 개발시 여러 설치를 요하지않고 편하게 개발하게 해주는 서비스
- truffle config의 ropsten 부분 주석해재 해서 provider의 YOUR_PROJECT 부분을 infura의 PROJECT ID를 붙혀넣는다.
- 21(HDWalletProvider), 25(mnemonic) line 주석해체 하고 25Line에 기존의 metamask의 "긴 단어열 입력"
- sudo apt-get install build-essential
- sudo apt-get update
- npm install truffle-hdwallet-provider //->오류 터짐 당황하지말고... PYTHON VARIABLE 에러 즉 안깔렸다 이말이야, 그리고 -g 글로벌로 안깔았기 떄뭉에 다른 폴더에서는 또 설치해야된다.
- !ERROR 해결
0. sudo apt-get python 해서 python --version 처서 나옴 그냥 하면된다.
1. 다시 hdwallet 인스톨하기

###pet-shop truffle box example 
- 이러한 예제 몇게 따라하면 실력 많이 늘듯하다.
1. tutorial 따라하기
2. 이후 ppt에 나온 payable 관련 사항 변경
  App.contracts.Adoption.deployed().then(function(instance) {
    ....
    return adoptionInstance.adopt(petId, {from: account, value:10000000000000000}); //eth가 0.01이상이 없으면 안된다.
    ....
};
3. nvm run dev => 주요 서비스 실행
4. truffle console --network development(가나슈) 연결 환경 & 연결
5. MetaMask에 가나슈 계정을 추가
6. 전송해 보기!
     

//wei ->0**9-> gwei -> // ->eth