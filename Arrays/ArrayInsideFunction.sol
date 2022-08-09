// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract funcy{
    
    function createAArray() public pure returns(uint){
        uint[] memory arrmatha= new uint[](3);
        //only fixed sized array can be created in memory

        arrmatha[0]=10;
        return arrmatha[0];
    }
}
