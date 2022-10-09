// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract A{
    event log(string _name, uint _age);

    function fun1() public virtual {
        emit log("A.fun1",21);
    }
    function fun2() public virtual {
        emit log("A.fun2",21);
    }
}
// super wil call a function which is from most right contract, if it is not in that than super will call from second most right one contract. 
contract B is A {
    function fun1() public virtual override {
        emit log("B.fun1",31);
        A.fun1();
    }
    // here super will call fun2() from A
    function fun2() public virtual override {
        emit log("B.fun2",31);
        super.fun2();
    }
}

contract C is A {
    function fun1() public virtual override {
        emit log("C.fun1",41);
    }
    function fun2() public virtual override {
        emit log("C.fun2",41);
    }
}

contract D is B,C { // hear we can also write C,B
    function fun1() public override(B,C) {
        emit log("D.fun1",51);
        C.fun1();
    }
    // here super will call fun2() from C
    function fun2() public override(C,B){
        emit log("D.fun2",51);
        super.fun2();
    }
}