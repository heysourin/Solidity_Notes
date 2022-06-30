// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;


//Enums: user defined data types, have so many choices

// compare with booleans, 1 or 0, although it has only two choices

//imagine you have an ecommerce site
//pending or shipped: accept or not
//cancelled or not

//perks: 1. maintanance of smartcontracts increases
//       2. readablity
//       3. required**
//       4. reduces bugs


contract enumsCont{

    enum Status{
        Pending,//0th index
        Shipped,//1st
        Accepted,//2nd
        Rejected,//3rd
        Cancel//4th
    }

     Status status;

    function getStatus() public view returns(Status){
        return status;
    }

    function setStatus(Status _status) public{
        status=_status;
    }

    function rej() public{
        status = Status.Rejected;
    }

    function reset() public{
        delete status;
    }
}
