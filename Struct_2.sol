// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.8;

contract structie{
    struct Emp{
        string name;
        uint age;
        address acc;
    }

    Emp public emp;//Value of 'emp3' has been pushed

    Emp[] public empArr;//creating an empty array, values will be pushed later


//Before calling the 'setValue' function it will be its default value
    constructor(string memory _name, uint _age,  address _acc){
        emp.age=_age;
        emp.name=_name;
        emp.acc=_acc;
    }
    
    function setValues() public{
//we can set values in three ways

//Process 1:

    //creating a variable of Emp type, name 'emp1'

        Emp memory emp1 = Emp("Berlin",21,0x617F2E2fD72FD9D5503197092aC168c91465E7f2);

//Process 2:
        Emp memory emp2 = Emp({age:22, name:"Nirobi", acc:msg.sender});

//Process 3: Can't use at contract level

        Emp memory emp3;
        emp3.name="Rio";
        emp3.age=23;
        emp3.acc=msg.sender;

//Nothing, justy pushing a value inside 'emp' variable
//that was created at contract level
         emp=emp3;
//Pushing details into array         
        empArr.push(emp1);
        empArr.push(emp2);
        empArr.push(emp3);//Also pushed 'emp3' in 'empArr'
    
//Pusing value into array by another way(without creating variable)
// Going to 3rd index in this case
        empArr.push(Emp("Helsinki",33,msg.sender));

//Updating value: Updating the value of state variable 'emp'
        Emp storage emp_temp = emp;
        emp_temp.name="Denver";

    }

//printing the whole array:
    function seeArr() public view returns(Emp[] memory){
        return empArr;
    } 
}
