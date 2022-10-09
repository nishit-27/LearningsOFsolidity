// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Require{
    address public Owner = msg.sender;
    uint public age = 25;

    function CheckRequire(uint _x) public {
        age = age + 5;
        require(_x>2,"_x is not greater than 2");
    }
    function ChangeOwner(address NewOwner) public {
        require(Owner == msg.sender,"You are not the owner");
        Owner = NewOwner;
    }
}