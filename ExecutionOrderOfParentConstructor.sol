// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.0;

contract A{
    string public name;
    uint public age;
    constructor(string memory _name, uint _age) {
        name = _name;
        age = _age;
    }   
}
contract B{
    string public add;
    uint public salary;
    constructor(string memory _add, uint _salary) {
        add = _add;
        salary = _salary;
    }   
}
// order of execution of parent constructor will be according to the Inheritace order.  
// execution order of constructor will be as A,B,C.
contract C is A("virat",33),B("delhi",100000){

}
// or I can also write "contract D is B,A" . Because A,B are independent contract no body has any inheritance.
// execution order of constructor will be as A,B,C.
contract D is A,B {
    constructor() A("virat",33) B("delhi",100000){

    }
}
// execution order of constructor will be as B,A,C.
contract E is B,A {
    uint public boom;
    constructor(string memory _name, uint _age, string memory _add, uint _salary, uint _boom) A (_name,_age) B (_add,_salary){

    }
}
// execution order of constructor will be as A,B,C.
contract F is A,B {
    constructor(string memory _add, uint _salary) A("virat",33) B(_add,_salary){

    }
}
// execution order of constructor will be as B,A,C.
contract G is B("delhi",100000),A{
    constructor(string memory _name, uint _age) A(_name,_age){

    }
}