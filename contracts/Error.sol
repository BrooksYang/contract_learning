// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract Error {
    int public balance;

    function deposit(int _amount) public {
        require(_amount > 0, "Amount must be greater than 0");

        // uint oldBalance = balance;

        balance += _amount;
    }
}