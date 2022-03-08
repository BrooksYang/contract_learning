// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract A {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }

    function getName() public view returns(string memory) {
        return name;
    }
}

contract B {
    string public hello;

    constructor(string memory _hello) {
        hello = _hello;
    }

    function getHello() public view returns(string memory) {
        return hello;
    }
}

contract C is A, B {
    // constructor() A("A") B("Helllo World") {}

    constructor(string memory _name, string memory _hello) A(_name) B(_hello) {}
}

