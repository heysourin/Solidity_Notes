// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 < 0.9.0;


contract fixesizedarray1{
    function arrCreate() public pure returns(uint){

        uint[] memory arrayMemory=new uint[](3);

        arrayMemory[2]=30;
        return arrayMemory[2];
    }
}
