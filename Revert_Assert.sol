// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.8;

contract _require{
    address public owner=msg.sender;
    uint public age=25;

    // function chcekRequire(uint _x) public{
    //     age=age+5;
    //     require (_x>2,"Value of amt is less than 2");
    // }

// Revert: revert means undo in state varible

    // error throwError();
    error throwError(string, address);

    function checkRevert(uint _x) public{
        age=age+5;
        if(_x<2){
            //revert("Value of amt is less than 2");//shows error in console
            //revert throwError();//when string is not mentioned in error-function, shows error in console
            revert throwError("Value of amt is less than 2",msg.sender);//shows error in console and address who is trying to access
        }
    }

    function onlyOwner() public{

        if(owner!=msg.sender){
            revert ("You are not the owner");
        }
        age=age-2;
    }


// Assert: 1. used to check bug 2. used for security purposes
//imagine i've assigned a value in a state variable earlier, now asert is used to check
// if the state variable is still unaltered or not
    function checkOwner() public view{
        assert (owner==0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
    }

}
