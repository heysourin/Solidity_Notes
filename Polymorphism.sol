// Polymorphism: having functions of same 'name', but when functions are called
//they work perfectly as all the functions either have different types of paremeters in it or
//different numbers of parameters in it

// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Polymorphism{

    function sum(uint a, uint b) public pure returns(uint){
        return a+b;
    }

    function sum(uint a, uint b, uint c) public pure returns(uint){
        return a+b+c;
    }

    function sum(string memory x,uint a, uint b) public pure returns(uint){
        x = "Hi there";
        return a+b;
    }
}
