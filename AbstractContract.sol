// Abstract contracts are contracts that have at least one function without its
// implementation.

// To make a contract abstract you have to use abstract keyword.

// The abstract contract defines the structure of the contract and any derived
// contract inherited from it should provide an implementation for the incomplete
// functions, and if the derived contract is also not implementing the incomplete
// functions then that derived contract will also be marked as abstract.

//Use: sometimes one contract need to use features of another contract

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.8;

abstract contract Parent{
    string public str;
    address public manager;

    constructor(){
        str = "hello world";
        manager = msg.sender;
    }

    function setter(string memory _str) public virtual {

    }
}


contract Child is Parent{
    uint public x;

//child contract will give error untill you override a virtual function 
//present in parent contract
    function setter( string memory _str) public override{
        str = _str;
    }
}
