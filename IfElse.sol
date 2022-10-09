//we can not use if,else at contract level. contract level is position where we define our state variable.
pragma solidity ^0.8.0;

contract IfElse {

    function EnterValue (uint _x) public pure returns(string memory){
        string memory val;

        if(_x>100){
            val = "Greater than 100";
        }
        else if (_x<100){
            val = "Smaller than 100";
        }
        else {
            val = "Equal to 100";
        }

        return val;

    }
}