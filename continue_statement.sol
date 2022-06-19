// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 < 0.9.0;

contract loopi{
    function loopu() public pure returns(uint){
        uint count=0;
        for(uint i=0;i<10;i++){

            if(i==6){
                continue;
            }
            count=count+2;
        }
        return count;
    }
}
//
//      i      count
//      0       2
//      1       4
//      2       6
//      3       8
//      4      10
//      5      12
//      7      14
//      8      16
//      9      18
// so it returns the final value of 'count', which is 18
