// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.8;

// job: input validation & access control
//advantage: 1. returns gas 2.revert state variables
contract _require{
    address public owner=msg.sender;
    uint public age=25;

    function chcekRequire(uint _x) public{

        age=age+5;
//code execution stops if require gives falsy value
        require (_x>2,"Value of amt is less than 2");
    }

    function onlyOwner() public{
        require(owner==msg.sender, "You are not the owner");
        age=age-2;
    }

}
