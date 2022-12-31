// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract demo{
    string[] public vehicles=["Car","Bus" "Bike"];

    function memo() public view{
        string[] memory v1=vehicles;// using memory keyword creates a new array in v1 variable
        v1[0]="Ship";// so changing the array value doesnot affect original array
    }
    function sto() public {
        string[] storage v1=vehicles;
        v1[0]="Ship";
    }
}


// SPDX-License-Identifier: MIT

// Storage of variables in Solidity
pragma solidity >=0.8.4; // solidity compiler version

contract Blocktrain {
    // storage is done in 4 ways
    // 1. Storage => Stored on Blockchain
    // 2. Memory => the variables are stored have a lifetime
    // 3. Stack => All variables declared in a function are
    //             stored in a fixed size stack
    // 4. Calldata => Similar to Memory, this variables have a
    //               lifetime but are immutable
}
