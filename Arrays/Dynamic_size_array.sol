// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;


contract hlo2{
   uint[] public id;


//to assign values in the array
   function Insert(uint indx) public{
       id.push(indx);
   }


//To check inserted(pushed) number is at 'which'th index
   function get(uint cntnt) public view returns(uint){
       for(uint i=0; i<id.length; i++){
           if(cntnt==id[i]){
               return i;
           }
       }
   }


//to print the array
   function getAll() public view returns (uint[] memory){
        return id;
   }
   

//to get the length
   function length() public view returns(uint){
       return id.length;
   }

}
