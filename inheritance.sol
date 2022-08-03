// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract A{
    function func1() public pure returns(string memory){
        return "I'm in contract A";
    }
    function func2() public pure returns(string memory){
        return "I'm in contract A";
    }
    function func3() public pure virtual returns(string memory){
        return "I'm in contract A";
    }
    function func4() public pure virtual returns(string memory){
        return "I'm in contract A";
    }

   string public str;
   address public owner;

   constructor(){
      owner = msg.sender;
      str = "amar matha";
   }


}
 



// We want: a contract B with all the features of A,
// and also we want to manipulate func3(),func4()

//So to make contract A, parent of contract B,
//this is way B will achieve all the public variables/functions of A
contract B is A{

//Can access and manipulate the parent contract's function
//Also contract A has given permission by the keyword 'virtual'
//In contract B we are writing 'override' in place of 'virtual' 
//This way you can access the datas of A and will have to edit minimum

   function func3() public pure override returns(string memory){
      return "I'm in contract B";
   }


 function func4() public pure virtual override returns(string memory){
        return "I'm in contract B";
   }
// Virtual keyword in func4() in contract B is again allowingit to edit in its child
}



contract C is B{
//Datas inheritated from B, which were inheritated from A and ulaltered
// will still show 'I'm in contract A', ie func1() and func2() in this case
// so C becomes the grandchild of A
//func4() is manipulated here

 function func4() public pure override returns(string memory){
        return "I'm in contract C";
    }
}
