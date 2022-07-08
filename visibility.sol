// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.8;

//Note:
//external: − External functions are meant to be called by other contracts.
// They cannot be used for internal call. To call external function within contract 
//this.function_name() call is required. State variables cannot be marked as external.

//public − Public functions/ Variables can be used both externally and internally.
// For public state variable, Solidity automatically creates a getter function.

//internal − Internal functions/ Variables can only be used internally or by derived contracts.

//private − Private functions/ Variables can only be used internally and not even by derived contracts.


contract A{

    uint private x =10;
    uint internal y=100;
    uint public z=1000;
//uint external a=10000; // does not work at contract level


    function check1() private pure returns(string memory){
        return "private";
    }

    function check2() internal pure returns(string memory){
        return "internal";
    }

    function check3() external pure returns(string memory){
        return "external";
    }
    function check4() public pure returns(string memory){
        return "public";
    }

    function checkVar() public view returns(uint){
        return x;// it can return x,y,z
    }

//notice: using another function inside, still u can write 'pure' type;
    function checkFunc1() public pure returns(string memory){
        return check1();
    }
    function checkFunc2() public pure returns(string memory){
        return check2();
    }

//not possible:
//     function checkFunc3() public pure returns(string memory){
//         return check3();
//     }
//  }

//possible:
    function checkFunc4() public pure returns(string memory){
        return check4();
    }
 }

// A is the parent of B, B will contain properties of A
contract B is A{

//this will give error:
    // string a=check1();

//this is fine:
    string public b=check2();

//This will give error too:
    // string c=check3();

//This is fine:
    // string d=check4();
}


contract C{
    A obj = new A();//creating object
    
    uint public a=obj.z();

    function anotherCaller() public view returns(string memory){
        return obj.check3();
    }
}
