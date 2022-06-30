// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;


contract dynamicArray{
    bytes public _b1='a';

    function pushEle() public{
        _b1.push('b');
    }

    function popEle() public{
        _b1.pop();
    }

    function getLen() public view returns(uint){
        return _b1.length;
    }


   // to get the ascii value of the element present at 'n'th index
    function getEle(uint indx) public view returns(bytes1){
        return _b1[indx];
    }
}
