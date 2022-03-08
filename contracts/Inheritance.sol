// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract A {
    function getContractName() public pure virtual returns(string memory) {
        return "A";
    }
}

contract B is A {
    function getContractName() public pure override(A) returns(string memory) {
        return "B";
    }
}