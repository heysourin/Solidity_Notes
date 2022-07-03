// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.8;

//key-value pairs, ie values can be accessed throgh keys
//cant use mapping at file level/contract level
//cant use mapping at function level(insode function)
//mapping(key=>value)
contract _mapping{
   mapping(uint=>string) public empID;//here key is of uint and value is of string type

   function setID() public {
       empID[31]='Berlin';
       empID[41]='Rio';
       empID[51]='Oslo';
       empID[29]='Tokyo';
   }


   function getID(uint _id) public view returns(string memory){
       return empID[_id];
   }
}
