// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.15;

contract exchaging_ethers{
//***************************Ethers From account to contract to another acccount***************************

    address payable public getterAdrs = payable(0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2);


//Contract will receive the ethers, as this contract doesnot have ethers
    receive() external payable{
    }

    function checkBal() public view returns(uint){
        return address(this).balance;
    }

//***************************Send***************************
    function _send() public{
        //address.send(amt)
       bool sent = getterAdrs.send(1 ether);
       require(sent,"Transaction failed" );//if 'sent' is true then transction will execute
       //without require function: if the transaction needs more gas than 2300, then transaction
       //wil be failed and all the gases will be consumed
    }


//***************************Transfer***************************
    function _transfer() public{
        //address.transfer(amt)
        getterAdrs.transfer(1000000000000000000);
    }


//***************************Call***************************
    function _call() public{
        //address.call{value: x wei, gas:2345}
        //if you leave gaslimit empty then default is 3000000 gas
        (bool sent, /*bytes memory data*/) = getterAdrs.call{value:1 ether}("");

        require(sent,"Transaction failed" );
    }





//if you want to set getterAddress yourself pass it in function parameters,
//must be 'payable'



//***************************Ethers From account to another acccount (directly)***************************

//done with msg,value, and you have to make all the functions 'payable'

    function _send2(address payable getterAdrs2) public payable{
       bool sent = getterAdrs2.send(msg.value);
       require(sent,"Transaction failed" );
    }

    function _transfer2(address payable getterAdrs2) public payable{
       getterAdrs2.transfer(msg.value);
    }

    function _call2(address payable getterAdrs2) public payable{
       (bool sent,) = getterAdrs2.call{value: msg.value}("");
       require(sent,"Transaction failed" );
    }

}




//***************************Sending Ether from above contract to below contract***************************

contract getETH{

    receive() external payable{

    }

    function checkBal() public view returns(uint){
        return address(this).balance;
    }

//deploy both the contracts, then copy block address, then send using 'msg.value' input
}
