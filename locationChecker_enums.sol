// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;


contract _enums{
    enum Location{
        Memari,
        Kolkata,
        Bardhaman,
        Durgapur
    }

    Location l1;

    function checkLocation() public view returns(Location){
        return l1;
    }

    function setLocation(Location _l1) public returns(Location){
        return l1=_l1;
    }

    function setDgp() public{
        l1=Location.Durgapur;
    }

    function resetLocation() public{
        delete l1;
    }
}
