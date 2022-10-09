pragma solidity ^0.8.0;
contract ArrayinFunction {

    function ArrayInFunction() public pure returns(uint){

        uint[] memory arr = new uint[](3);

        arr[0] = 3;
        arr[1] = 33;
        arr[2] = 333;

        return arr[0];

    }

    uint[6] arr2;
    constructor() {
        arr2 = [3,4,2,6,7,8];
    }
    function showArray() public view returns(uint[6] memory){
        return arr2;
    }
}