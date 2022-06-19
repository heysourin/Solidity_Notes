// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 < 0.9.0;

contract loopi{
    function loopu() public pure returns(uint){
        uint count =0;
        for(uint i=0;i<=10;i=i+5){
            count=count+2;
        }
        return count;
    }
}

//
//      i      count
//      0       2
//      5       4
//      10      6
// so it returns the final value of 'count', which is 6


