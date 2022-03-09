// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract Wallet {
    address public owner;

    event Deposit(address sender, uint amount, uint balance);
    event Withdraw(uint amount, uint balance);
    event Transfer(address to, uint amount, uint balance);

    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    constructor() payable {
        owner = msg.sender;
    }

    function deposit() public payable {
        emit Deposit(msg.sender, msg.value, address(this).balance);
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    function withdraw(uint amount) public onlyOwner {
        payable(msg.sender).transfer(amount);
        emit Withdraw(amount, address(this).balance);
    }

    function transferTo(address _to, uint _amount) public onlyOwner {
        payable(_to).transfer(_amount);
        emit Transfer(_to, _amount, address(this).balance);
    }
}
