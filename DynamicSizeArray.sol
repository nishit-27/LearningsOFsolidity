// dynamic size array can only be define outsice of function ( state variable jya define thay tya j dynamic size
//  array define thay. while fixed size array can be define anywhere.

pragma solidity ^0.8.0;
contract DynamicsizeArray {

    uint[] public arr = [33,63,46,86,247,84]; 
    uint public Length = arr.length;  //this will not show new size every time it will remains constant for 
                                        // all time and show output as 100.

    function boom() public view returns(uint) {
        //get
        uint _x = arr[4];
        return _x;
    }

    function boom2() public {
        arr[3] = 33;  // change
        delete arr[4]; // delete
        arr.push(111); // push add one more index at the end of an array and give value which we entered in brackets
        arr.push(134);
        //arr.pop(); // pop delet last index of array

    }

    function ReturnArray() public view returns(uint[] memory){
        return arr;
    }
    function LenghtOfArray() public view returns(uint){
        return arr.length;
    }                                       // this will give updated answers as we change length of array
   
}