// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.8;

contract A{
    uint public a;
    
    constructor(){
        a=100;
    }

    function funA() public {
        a=10;
    }
}
contract B is A{
    uint public b;

    constructor(){
        b=200;
    }

    function funB() public {
        b=20;
    }
}
//contract C wnat have properties of both A and B



//A is more 'Base Like' as it is not inheriting from anyone,
//C is more 'Derived Like', as it is deriving from both A and B


// you can not write 'contract C is B,A',
// order: from more 'base like' to 'derived'

contract C is A,B{
//order of inheriting property of C :
//*******Right to left(means property of B first,then of A)
// & Depth first manner*************
//from B: b , funB()
//from A: a , funA()


//Alsao, if b and A provides same data(same var or func), then data of B will get more preference
}
