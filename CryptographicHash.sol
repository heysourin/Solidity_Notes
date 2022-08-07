// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.8;

contract demo{

    function hashKeccak256(uint _x, string memory name, address _add) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_x, name, _add));
    }

    function hashSha256(uint _x, string memory name, address _add) public pure returns(bytes32){
        return sha256(abi.encodePacked(_x, name, _add));
        
    }

    function hashRipemd160(uint _x, string memory name, address _add) public pure returns(bytes32){
        return ripemd160(abi.encodePacked(_x, name, _add));
        
    }
}

//Dont be confused
///'abi.endode()' and 'abi.encodePacked()' gives different bytes output
