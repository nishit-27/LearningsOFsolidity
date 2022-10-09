// SPDX-License-Identifier: MIT

// immutable also do same work as constant.
/* immutable make any state variable "constant" like constant do. But there is one difference between constant
   and immutable is, constant can only take value at "INLINE" while immutable can take value at "INLINE" and 
   also at "constructor level" */
// execution cost = constant<immutable<simple.

pragma solidity ^0.8.0;

contract Immutable {

    address public constant owner = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2 ;
    address public immutable owner2 = msg.sender;
    address public immutable owner3;

    constructor(address _owner) {
        owner3 = _owner;
    } 
    
    
    
}