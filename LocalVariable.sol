//variable which we enter into function is called local variable
//function ni andar lakhela badhaj variable ne local variable kevay ane aa local variable function execute thaya
//pachi gayab thai jay etle ke variable jagya rokvanu bandh kari de
//variable which we wright in function's parameter ia also called local variable 
//local variable got stored into memory(ram)
//state variable got stored into storage(Block Chain)
//state variable stays for forever on BlockChain

pragma solidity ^0.8.0;

contract localVariable {
    uint public age;
    bool public validity;
    address public NewAddress;
    
    function Information(bool _y,address _z) public returns(uint) {
        
        validity = _y;
        NewAddress = _z;
        uint _i = 44;
       _i += 6;
        age=_i;
        return _i;
    }
}
