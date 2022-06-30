// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

struct student{
    uint roll;
    string name;
}

contract demo{
    student public s1;

    constructor(uint _roll, string memory _name){
        s1.roll=_roll;
        s1.name=_name;
    }

    function change(uint _roll2, string memory _name2) public {
        student memory new_student=student({
            roll:_roll2,
            name:_name2
        });

        s1=new_student;
    }
}
