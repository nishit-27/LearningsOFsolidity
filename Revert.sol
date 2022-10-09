// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Revert {
    address public Owner = msg.sender;
    uint public age = 25;

    // function CheckRequire(uint _x) public {
    //     age = age + 5;
    //     require(_x>2,"_x is not greater than 2");
    // }

    function CheckRevert(uint _x) public {
        age = age + 5;
        if (_x<=2){
            revert ("_x is not greater thar 2");
        }
    }

    // custom error means we can costomised error

    error Errorcheck(string,address); // think "error" like "event". instead of emit here we can use revert while comparing error with event.
    function CheckRevert2(uint _x) public {
        age = age + 5;
        if (_x<=2){
            revert Errorcheck("_x is not greater than 2",msg.sender); 
        }
    }
    // function ChangeOwner(address NewOwner) public {
    //     require(Owner == msg.sender,"You are not the owner");
    //     Owner = NewOwner;
    // }
    error Errorcheck2(string,address ThisAddressTriedToChangeOwner);

    function ChangeOwner(address NewOwner) public {
       
        if(Owner!=msg.sender){
            revert Errorcheck2("You are not the owner",msg.sender);
        }
        Owner = NewOwner;
    }
}