// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

struct doner_info {
    string name;
    uint age;
    uint value;
    string country;
}

contract AdvMapping {
    mapping (address=>doner_info) public AccountInfo;
    
    function SetInfo(string memory _name, uint _age, uint _value, string memory _country) public {
        AccountInfo[msg.sender] = doner_info(_name,_age,AccountInfo[msg.sender].value+_value,_country);
    }
    function boom() public view returns(string memory){
        return AccountInfo[msg.sender].name;
    }
}