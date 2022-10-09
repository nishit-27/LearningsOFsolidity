// SPDX-License-Identifier: MIT

// This is the way to get money into the contract.
pragma solidity ^0.8.0;

contract Fallback_Receive{

    event log(string fun, address sender, uint AmountOfEtherSend, bytes DataWhichWeSend);

    fallback() external payable {
        emit log("fallback",msg.sender,msg.value,msg.data);
    }

    receive() external payable {
        emit log("receive",msg.sender,msg.value,"");
    }
}