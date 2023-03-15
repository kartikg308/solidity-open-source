// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Todo {
    enum Status {
        Pending, 
        Completed
    }

    struct Todos{
        string name;
        Status status;
    }

    Todos[] todoList;

    function addTodo(string memory name, Status status) public returns(Todos[] memory) {
        todoList.push(Todos(name, status));
        return todoList;
    }

    function getTodos() public view returns(Todos[] memory) {
        return todoList;
    }

    function updateTodo(uint index, Status status) public returns(Todos memory) {
        todoList[index].status = status;
        return todoList[index];
    }
}