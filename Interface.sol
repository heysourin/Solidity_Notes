// An interface is an agreement ora contract between itself and any contract that
// implements it.
// Interfaces restrictions

// They can only inherit from other interfaces but not from other contracts.
// They cannot declare state variables.
// They cannot declare constructor.
// Functions can be declared but not implemented. All declared functions must be
// external.

//Use: more restricted version of abstract,,need for inheritance

// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.8;

interface Parent{
    function setter(string memory _str) external;
}

contract child is Parent{
    function setter(string memory _str) public override {

    }
}

//another way to inherit
abstract contract child2 is Parent{
}
