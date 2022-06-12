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
