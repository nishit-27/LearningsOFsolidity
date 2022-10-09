// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract A {
    uint public x = 121;
    string public y = "I am in contract A";
    address public Owner = msg.sender;   
}

contract B is A {
   constructor () {
       x = 3;
       y = "I am in contract B";
   }
    uint public _x = 141; 
}

contract C is A,B { // C inherate properties starting from right to left.It means C wil first get properties of B and after getting from B, C will go to the A to get remainnig properties.
}                   // Order of writing A,B is according to "most based will be first".It means the contract which have less heritance will be at top left(FIRST).