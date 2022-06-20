// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 < 0.9.0;


contract fixesizedarray1{
    uint[5] arr;
    
    constructor(){
        arr=[10,20,30,40,50];
    }

    function returnArr() public view returns(uint[5] memory){
        return arr;
        // we dont usually return the whole array as it costs too much gas;
    }
}
