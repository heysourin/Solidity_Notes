// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 < 0.9.0;


contract fixesizedarray1{
    uint[5] public arr;
    function arrMani(uint x1) public {
        for(uint i=0;i<arr.length;i++){
            arr[i]=x1+i;
        }
    }
}

// when input x1='5' entered;
//
//     index    array-value
//       0        5+0=5
//       1        5+1=6
//       2        5+2=7
//       3        5+3=8
//       4        5+4=9
