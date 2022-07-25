// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.8;

//modiefier: Allows code reuseability, DRY

contract Modifier{

    modifier smaeCode(){
        for(uint _i=0;_i<10;_i++){

            }

            _;//this thing run the codes of the function
            // in which the modifier is mentioned

            //again modifier code
    }



    function fun1() public pure smaeCode returns(string memory){ 
            // for(uint _i=0;_i<10;_i++){
                //code
            // }
            return "fun1 say hi";
    }


//** here is a special type of return
    function fun2() public pure smaeCode returns(uint _x){ 
        //  for(uint _i=0;_i<10;_i++){
            //code
        //     }
            // return 20;
            _x=20;// this will automatically return 20
    }
    function fun3() public view smaeCode returns(address){ 
        //  for(uint _i=0;_i<10;_i++){
            //code
        //     }
            return msg.sender;
    }
}
