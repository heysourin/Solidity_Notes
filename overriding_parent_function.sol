// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.8;
contract A{
    uint public a;
    
    constructor(){
        a=100;
    }

    function funA() public {
        a=10;
    }
    function fun() public pure virtual returns(string memory){
        return "Hi, I'm in A";
    }
}
contract B is A{
    uint public b;

    constructor(){
        b=200;
    }

    function funB() public {
        b=20;
    }
    function fun() public pure virtual override returns(string memory){
        return "Hi, I'm in B";
    }
}
contract C is A,B{
    //C must override fun()

// to override function in this case you have to provide the
//names of the contract in which same named functions are present;
//order doesnot matter.
    function fun() public pure virtual override(A,B) returns(string memory){
        return "Hi, I'm in C";
    }
}

//inheriting property from A,B,C
contract D is A,B,C{
    function fun() public pure override(A,B,C) returns(string memory){
        return "Hi, I'm in D";
    }
}

//inheriting property from A,B
contract E is A,B{
    function fun() public pure override(A,B) returns(string memory){
        return "Hi, I'm in E";
    }
}
