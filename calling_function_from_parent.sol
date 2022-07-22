// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.8;


contract A{
    event log(string name, uint age);

    function func1() public virtual{
        emit log("A.func1",21);
    }
    function func2() public virtual{
        emit log("A.func2",21);
    }
}
contract B is A{
    function func1() public virtual override{
        emit log("B.func1",31);

//direct calling a function from contract A
        A.func1();
    }
    function func2() public virtual override{
        emit log("B.func2",31);

//when a contract is a child of multiple contracts then 'super' checks
//availability of the function from right most parent
        super.func2();
    }
}
contract C is A{
      function func1() public virtual override{
        emit log("C.func1",41);
    }
    function func2() public virtual override{
        emit log("C.func2",41);
    }
    
}
contract D is B,C {
      function func1() public override(C,B){
        emit log("D.func1",51);

        B.func1();
    }
    function func2() public override(B,C){
        emit log("D.func2",51);

        super.func2();
    }
}

//** also exchange the position of B,C in 'D' contract, and check as both B and C are of equal preference.
