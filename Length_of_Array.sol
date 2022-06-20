// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 < 0.9.0;


contract fixesizedarray1{
    uint[5] public arr=[10,20,30,40,50];

    function arryFunc() public view returns(uint) {
        uint len=arr.length;
        return len;
    }
}
