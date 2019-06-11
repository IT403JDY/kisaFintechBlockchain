pragma solidity >=0.4.26;

contract MyContract{
    uint[] ages;
    uint xx;

    function learnDataLocation(uint[] memory newAges) public returns (uint a){
        ages = newAges;
        uint16 myAge = 77;
        uint[] storage studentAges = ages;

        studentAges[0] = myAge;
        a = studentAges[0];

        return a;
    }

}
