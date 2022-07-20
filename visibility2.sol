// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.8;

contract A{
    string private a="private var";
    string public b="public var";
    string internal c="internal var";
    // string external d="external";

    function checkPrivatePublic() public view returns(string memory){
        return a;
    }
    function checkPrivateExt() external view returns(string memory){
        return a;
    }


    function PublicExt() external view returns(string memory){
        return b;
    }
    function PublicPublic() public view returns(string memory){
        return b;
    }


    function internalExt() external view returns(string memory){
        return c;
    }
    function internalPublic() public view returns(string memory){
        return c;
    }
}


contract unrelated{
    A obj1 = new A();

    string public sUn=obj1.b();//calling the public variable of 'A'


    //Accessing one external function from so manyy
    function unCaller() public view returns(string memory){
        return obj1.internalExt();
    }
}
