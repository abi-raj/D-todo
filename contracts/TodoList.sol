// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract TodoList{
    uint public tasksCount=0; //number of tasks

    struct Task{
       uint id; 
       string content;
       bool completed;
    }

    mapping(uint => Task) public tasks; //mapping of tasks

constructor() public{
    createTask("gf");
}

    function createTask(string memory _content)public  {
        tasksCount++; 
        tasks[tasksCount]  = Task(tasksCount,_content, false);
    }

}