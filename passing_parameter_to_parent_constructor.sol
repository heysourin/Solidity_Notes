// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.8;

contract A{
    string public name;
    uint public age;

    constructor(string memory _name,uint _age){
        name=_name;
        age=_age;
    }
}
contract B{
    string public homeAddrs;
    uint public salary;

    constructor(string memory _homeAddrs,uint _salary){
        homeAddrs=_homeAddrs;
        salary=_salary;
    }
}

//contract C is passed using fixed value, while creating it
//order of execution: A,B,C
contract C is A("Max",22),B("Memari",150000){
    
}



//another way to input values,fixed type: Using constructors
// order of execution: B,A,D
contract D is B,A{
    constructor() A("Denver",24) B("Bardhaman",13400){

    }
}

//3rd way of passing value, dynamic type

//btw here A and B both are base type, no oreders to be followed here
contract E is A,B{
    constructor(string memory _name,uint _age,string memory _homeAddrs,uint _salary)
    A(_name,_age) B(_homeAddrs,_salary){

    }
}

// /4th way: mixed type

contract F is A("Max",21),B{
    constructor(string memory _homeAddrs,uint _salary) B( _homeAddrs,_salary){

    }
}

//order of inheritence is the order of execution
