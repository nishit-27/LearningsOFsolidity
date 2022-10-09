
pragma solidity ^0.8.0;
contract Arraywithloops {
    uint[6] public arr = [9,3,5,6,7,4];
    
    function boom() public view returns(uint){
        uint x;
        x = arr[2];
        return x;
    }
    function boom2() public {
        arr[2] = 22;
    }
    function Delete() public {
        delete arr[2];
    }
    function LengthOfArray() public view returns(uint){
        uint y = arr.length;
        return y;
    }
    
    uint[7] public arr2; 

    function EnterTheValue(uint z) public {
        for(uint i=0; i<arr2.length; i++){
            arr2[i] = i + z;
        }
    }
    
}