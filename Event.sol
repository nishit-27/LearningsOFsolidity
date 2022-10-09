// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
// event stores info on blockchain.
contract Event {
    event balance(address _from , string _message , uint _val);

    function setValue(uint _amount) public {
        emit balance (msg.sender,"has balance 0f",_amount);
    }
}

contract ChatBlock {
    event message(address indexed _from, address indexed _to, string _message); //_from,_to,_message this is not compulsory write.we have written this because reader can easily understand this.
    function getInfo(address to_,string memory message_) public {
        emit message(msg.sender,to_,message_);
    }
}
// indexed is used for getting all log of that account .
// event can have multiple things like(address,uint,uint, string,bool,etc) but we can use indexed only for three variables.