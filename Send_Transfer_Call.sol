// SPDX-License-Identifier: MIT

// this is way to send money form contract to an other contract or to a address which is payable.
pragma solidity ^0.8.0;

contract SendEther{

    address payable public getter = payable (0xdD870fA1b7C4700F2BD7f44238821C26f7392148);

    receive() external payable {}

    function SEND() public {
        bool sent = getter.send(1000000000000000000);
        require (sent,"Transection is failed");
    }

    function TRANSFER() public {
        getter.transfer(3000000000000000000);
    }
    
    function CALL() public {
        
        (bool sent, /* bytes memory data */) = getter.call{value : 5000000000000000000, gas : 2000000}("");
        require (sent, "Tracsection is failed");
    }// if we don't write gas: 2000000 then its okey remix will set gas limit as default value of 3000000
}
// in this contract we can give input of address in which we want to send eth.
contract SendEther2{

    receive() external payable {}

    function SEND(address payable getter) public {
        bool sent = getter.send(1000000000000000000);
        require (sent,"Transection is failed");
    }

    function TRANSFER(address payable getter) public {
        getter.transfer(3000000000000000000);
    }
    
    function CALL(address payable getter) public {
        
        (bool sent,) = getter.call{value : 5000000000000000000}("");
        require (sent, "Tracsection is failed");
    }
}

contract SendEther3{
    
    function SEND(address payable getter, uint _ETH) payable public {
        bool sent = getter.send(_ETH*1000000000000000000);
        require (sent,"Transection is failed");
    }

    function TRANSFER(address payable getter, uint _ETH) payable public {
        getter.transfer(_ETH*1000000000000000000);
    }
    
    function CALL(address payable getter, uint _ETH) payable public {
        
        (bool sent,) = getter.call{value :_ETH*1000000000000000000}("");
        require (sent, "Tracsection is failed");
    }
}

contract SendEther4{
   
    function SEND(address payable getter) payable public {
        bool sent = getter.send(msg.value);
        require (sent,"Transection is failed");
    }

    function TRANSFER(address payable getter) payable public {
        getter.transfer(msg.value);
    }
    
    function CALL(address payable getter) payable public {
        (bool sent,) = getter.call{value :msg.value}("");
        require (sent, "Tracsection is failed");
    }
}

// to send money into other contract we just have to give address of that contract which we get after deploing that contract.