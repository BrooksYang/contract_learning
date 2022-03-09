// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract Struct {
    struct Todo {
        string task;
        bool completed;
    }

    Todo[] private todoList;

    function create(string memory _task) public {
        // todoList.push(Todo(_task, false));
        Todo memory todo = Todo(_task, false);

        todoList.push(todo);
    }

    function getTodo(uint _idx) public view returns(Todo memory) {
        return todoList[_idx];
    }

    function getTodoDetail(uint _idx) public view returns(string memory task, bool completed) {
        Todo storage todo = todoList[_idx];

        return (todo.task, todo.completed);
    }

    function updateTask(uint _idx, string memory _task) public {
        Todo storage todo = todoList[_idx];

        todo.task = _task;
    }

    function toggleCompleted(uint _idx) public {
        Todo storage todo = todoList[_idx];

        todo.completed = !todo.completed;
    }
}