// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract A {
    uint public x = 121;
    address public Owner = msg.sender;
    
    function boom1() public pure returns(string memory){
        return "I am in contract A";
    }
    function boom2() public pure virtual returns(string memory){
        return "I am in contract A";
    }
    function boom3() public pure virtual returns(string memory){
        return "I am in contract A";
    }
}

contract B is A {
    function boom2() public pure override returns(string memory){
        return "I am in contract B";
    }
    function boom3() public pure virtual override returns(string memory){
        return "I am in contract B";
    }
    constructor (){
        x=333;
    }
}

contract C is B {
    
    function boom3() public pure override returns(string memory){
        return "I am in contract C";
    }
}