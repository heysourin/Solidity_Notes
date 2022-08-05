// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.8;

contract payableAddress{

    address payable user = payable(0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db);

//this function will store the ethers in the contract
    function payEther() payable public{

    }

    function payEthersToUser() public{
        user.transfer(10 ether);
    }
    
    function checkUserBalance() public view returns(uint){
        return address(user).balance;
    }

    function checkContractBalance() public view returns(uint){
        return address(this).balance;
    }
}
//the main thing is--> first you pay the ethers to the contract from an account,
//and then transfer those ethers of the contracts to another account
