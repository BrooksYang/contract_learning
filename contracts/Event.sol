// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract Event {
    event Log(address sender, string message);

    function transfer() public {
        emit Log(msg.sender, "I sent 1 ether to you!");
        emit Log(msg.sender, "I sent 2 ether to you!");
    }
}