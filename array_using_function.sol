// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;


contract hlo2{
   uint[] public id;

   function Insert(uint indx) public{
       id.push(indx);
   }

   function get(uint cntnt) public view returns(uint){
       for(uint i=0; i<id.length; i++){
           if(cntnt==id[i]){
               return i;
           }
       }
   }

   function getAll() public view returns (uint[] memory){
        return id;
   }
   
   function length() public view returns(uint){
       return id.length;
   }

}
