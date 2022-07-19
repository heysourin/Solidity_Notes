// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract _events{
    event balance (address acnt, string messg, uint val);
    //naming is a good practise but you can write is like this also:
    //event Balance (address,string,uint);

//simple function/ ransactional type function 
    function setData(uint _val) public {
        emit balance(msg.sender,"has value",_val);
    }
}

contract chatApp{
//btw 'indexed' keyword comes in function while making dapps
    event chat(address indexed _from, address _to, string messg1);

    function sendMsg(address to_, string memory messg1_) public{
        emit chat(msg.sender,to_,messg1_);
    }
}
