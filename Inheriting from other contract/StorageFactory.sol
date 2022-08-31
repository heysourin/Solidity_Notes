// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.0;

import "./SimpleStorage.sol"; 

contract StorageFactory {
    // SimpleStorage public simpleStorage; //creating a global variable of simple storage contract
    SimpleStorage[] public simpleStorageArray;


//***IMP***the below function is an example of how one contract can deploy another contract
    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage(); //have to start with 'SimpleStorage' if you have not created a global variable in the very beggining
        simpleStorageArray.push(simpleStorage);
    }
    

//**IMP** store value in SimpleStorage contract
    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(_simpleStorageNumber);
        simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
    }
    
//**IMP** Get value from SimpleStorage contract
    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        // return SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).retrieve();
        return simpleStorageArray[_simpleStorageIndex].retrieve();
    }
}
