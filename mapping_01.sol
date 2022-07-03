// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.8;

contract _mapping{
    mapping(uint=>string) public student;

    function input(uint roll, string memory name) public{
        student[roll]=name;
    }
}
// we can do the same using array, but in that case there will be
// a lot of memory wastage, retreat data in a faster way
//
//imagine we have to map roll num 1 and roll num 99, so in that case we
//have to create array of 100 indexes
