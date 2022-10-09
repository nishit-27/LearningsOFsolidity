// SPDX-License-Identifier: MIT
// maping must be declared in contract not outside of the contract. We can not declare mapping in function.
// So mapping must be declared at contract level.
pragma solidity ^0.8.0;

contract Mapping {

    mapping (uint=>string) public emp_id;  // (key=>value) key must be like value type, enum type, contract type.

    function setValue() public {
        emp_id[3] = "dhoni";
        emp_id[36] = "virat";
        emp_id[44] = "dhavan";
    }
    function getName(uint _id) public view returns(string memory){
        return emp_id[_id];
    }
} 