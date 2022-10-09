
pragma solidity ^0.8.0;

contract TernaryOperator {

    // function EnterValue (uint _x) public pure returns(string memory){
    //     string memory val;

    //     if(_x>100){
    //         val = "Greater than 100";
    //     }
        
    //     else {
    //         val = "Equal to 100 or Less than 100";
    //     }

    //     return val;
    // }

    function EnterValue(uint _x) public pure returns(string memory){
        string memory val;

        val = _x>100 ? "Greater than 100" : "Equal to 100 or Less than 100" ;
        return val;
    }

    // function EnterValue(uint _x) public pure returns(string memory){
        
    //     string memory val =  _x>100 ? "Greater than 100" : "Equal to 100 or Less than 100" ;
        
    //      return val;
    // }
}