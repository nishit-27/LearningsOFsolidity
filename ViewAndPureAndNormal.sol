
pragma solidity ^0.8.0;

contract ViewPureNormal {

    uint public age = 23;
    address public Owner = msg.sender ;

    function showAge() public view returns(uint){
        return age;
    }
    function showAge2(uint _x) public pure returns(uint){
        return _x + 10;
    }
    function changeage(uint _y) public {
        age += _y;
    }
    function showAge3() public view returns(uint){
        return age+34;
    }
    function showAge4(uint _x) public view returns(uint){
        return _x + 10;
    }
}