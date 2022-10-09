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
    function boom2() public pure virtual override returns(string memory){
        return "I am in contract B";
    }
    function boom3() public pure virtual override returns(string memory){
        return "I am in contract B";
    }
    constructor (){
        x=333;
    }
}

contract C is A,B{
    
    function boom3() public pure override(B,A) returns(string memory){// whenever we add(ride) function from more than one contract we have to write about all parents contract.we have to write override(A,B) or we can write override(B,A).
        return "I am in contract C";
    }
    function boom2() public pure override(A,B) returns(string memory){
        return "I am in contract B";
    }
}