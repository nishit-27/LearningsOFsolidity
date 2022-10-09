// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Modifier {

    address public owner = msg.sender;
    uint public AgeOfOwner = 34;
    string public ownerName = "boom";

    modifier onlyowner() {
        require(owner == msg.sender,"you are not a owner");
    _;
    // code can also be written here.
    }

    function CheckRequire(uint _x) public onlyowner {
        AgeOfOwner = AgeOfOwner + _x;
    }

    function ChangeOwner(address NewOwner) onlyowner public {
        owner = NewOwner;
    }

    function ChangeName(string memory Name) public onlyowner {
        ownerName = Name;
    }
}
// modifiers can be more that one for single contract.
// On executing function having modifiers, First modifier will execute. when system see "_;" they go to the main function and executes all things which are present in function. Once function is fully executed sysetm will go for modifier once again and see what is written after "_;" if anything is written then it will be execute.
// Execution occurs in three steps, Modifier- Main Function - Modifier
// we can't write modifier after returns.

// Input in modifier
contract InputInModifier {
    uint public age = 33;
    modifier Age(uint _x){
        age = age + _x;
        _;
    }
    function changeAge(uint _y) public Age(_y){
        //code
    }       
}