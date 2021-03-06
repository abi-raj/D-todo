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

event TaskCreated(uint id, string content,bool completed);
event TaskCompleted(uint id,bool completed);
constructor() public{
    createTask("gf");
}

    function createTask(string memory _content)public  {
        tasksCount++; 
        tasks[tasksCount]  = Task(tasksCount,_content, false);
        emit TaskCreated(tasksCount,_content,false);
    }
function toggleCompleted(uint _id) public{
    tasks[_id].completed = !tasks[_id].completed;
    emit TaskCompleted(_id,tasks[_id].completed);
}

}