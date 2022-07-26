// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.8;

//when we make a contract 'payable' we can send
// ethers to that particular contract

contract Payable{
//we will make a function 'payable' to make this contract
// payable with ethereum

    function getEth() payable public{

    }

    function checkBal() public view returns(uint){
        return address(this).balance;
    }

//Making a payable address variable

//**you have to typecaste the address and make it 'payable'
    address payable public owner=payable(msg.sender);


//Payable constructor: only when you want to add ethers once and 
//don't want further changes
    constructor() payable{

    }
}
