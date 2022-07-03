// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.8;

struct donor_dts{
    string name;
    uint age;
    string add;//not wallet wallah address
    uint donation;
}
contract advMapping{
    mapping(address=>donor_dts) public acc_info;

    function setDetails(string memory _name, uint _age, string memory _add, uint _donatio) public{
        acc_info[msg.sender]=donor_dts(_name,_age,_add,acc_info[msg.sender].donation+_donatio);
    }

    function delete_info() public{
        delete acc_info[msg.sender];
    }
}
