
pragma solidity ^0.8.0;

contract GlobleVariable {

    uint public time = block.timestamp;
    uint public timetochage;
    uint public SentEther;
    address public owner;

    constructor () {
        owner = msg.sender;
    }
    function ChangeOwner() public {
        owner = msg.sender;
        timetochage = block.timestamp;
    }

    function SendEther() public payable {
        SentEther = msg.value;
    } 
    function TotalEtherInAccount() public view returns(uint) {
        return address(this).balance;
        }

}