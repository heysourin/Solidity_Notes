// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 < 0.9.0;

contract loops{
    uint[5] public arr=[10,20,30,40,50];

    function createLoop() public{
        for (uint i = 0; i < arr.length; i++) {
            arr[i] *= 2;//arr[i] = arr[i]*2
        }
        // to return here you must add 'view' type, but in view type you
        //can not manipulate the data, so to get the new value you must create a new
        // function
    }
        //array is of reference type thats why memory

    function returnArray() public view returns (uint[5] memory) {
        return arr;
    }
}
