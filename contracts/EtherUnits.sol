// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract EtherUnits {
    uint256 public oneWei = 1 wei;
    uint256 public oneGWei = 1 gwei;
    uint256 public oneEther = 1 ether;

    function testOneWei() public view returns(bool) {
        return oneWei == 1;
    }

    function testOneGWei() public view returns(bool) {
        return oneGWei == 10**9;
    }

    function testOneEther() public view returns(bool) {
        return oneEther == 10**18;
    }

}