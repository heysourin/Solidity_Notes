contract NestedMapping {
    // Nested mapping (mapping from address to another mapping)
    mapping(address => mapping(uint => bool)) public nested;

    function get(address _addr1, uint _num) public view returns (bool) {
        // You can get values from a nested mapping even when it is not initialized
        return nested[_addr1][_num];
    }

    function set(address _addr1, uint _num) public {
        nested[_addr1][_num] = true;
    }

    function remove(address _addr1, uint _num) public {
        delete nested[_addr1][_num];
    }
}
__________________________________________________________________________________
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract NestedMapping {
    // Nested mapping (mapping from address to another mapping)
    mapping(address => mapping(uint => string)) public Data;

    function setData(address _adrs,uint num, string memory _str) public{
        Data[_adrs][num] = _str;
    }
}
