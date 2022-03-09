// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract Modifier {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOnwer() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    modifier notOnwer() {
        require(msg.sender != owner, "Owner can not do that");
        _;
    }

    function withdraw() public view notOnwer returns(bool) {
        return true;
    }
}