// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;


contract bytes_fixed{
    bytes5 public _b1;
    bytes7 public _b2;

    function setter() public {
        _b1='abcde';// if _b1='abcd', then last two digits will be zero,
                    //as bytes taken as bytes5: Padding
        _b2='12cdefg';
    }
    
    function getDigit() public view returns(bytes1){
        return _b2[0];
    }

    function getLength() public view returns(uint){
        return _b2.length;//independent of setter() function
    }
}
