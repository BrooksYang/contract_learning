// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract A {
    uint public data;

    function setData(uint _data) public returns(uint) {
        data = _data;

        return data;
    }

    function setDataAndReceiveEther(uint _data) public payable returns(uint) {
        data = _data;

        return data;
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
}

contract B {
    function setData(A _a, uint _data) public {
        _a.setData(_data);
    }

    function setDataAndTransferEther(A _a, uint _data) public payable {
        _a.setDataAndReceiveEther{value: msg.value}(_data);
    }

    function proxyEther(A _a) public payable {
        payable(address(_a)).transfer(msg.value);
    }

    function proxyEtherByContractAddress(address _address) public payable {
        payable(_address).transfer(msg.value);
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }
}
