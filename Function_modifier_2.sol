// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.8;

contract Auction{

//we want: only deplyoer to access all the functions of the auction

    address owner = msg.sender;

    modifier onlyOwner(){
        require(owner==msg.sender, "You're not the owner");

        _;
    }

    function startAuction() public view onlyOwner{
        // require(owner==msg.sender, "You're not the owner");
        //code
    }

    function stopAuction() public view onlyOwner{
        // require(owner==msg.sender, "You're not the owner");
        //code
    }

    function checkStatus() public view onlyOwner{
        // require(owner==msg.sender, "You're not the owner");

    }



//********taking input in the modifier
    uint public age=30;

    modifier temp(uint _x){
        age=age+_x;

        _;
    }
    function changeAge(uint _y) public temp(_y) {
        // age=age+_y;
    }
}
