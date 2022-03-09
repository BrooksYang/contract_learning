// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract Mapping {
    mapping(address => uint) public myMap;
    address[] public myAddress;

    function setMapping(address _address, uint _number) public {
        myMap[_address] = _number;
        myAddress.push(_address);
    }

    function getMapping(address _address) public view returns(uint) {
        return myMap[_address];
    }

    function deleteMapping(address _address) public {
        delete myMap[_address];
    }

    function getTotal() public view returns(uint) {
        require(myAddress.length > 0, "Has no values.");

        uint sum = 0;
        for (uint i = 0; i < myAddress.length; i ++) {
            address key = myAddress[i];
            uint value = myMap[key];
            sum += value;
        }

        return sum;
    }

    function test() public {
        setMapping(0x18Ca67c7A01374ba5117368980832e2A5Aab18a9, 10000);
        setMapping(0x4E229747DB3feAA0811Fc505ac8bC12348aa737d, 20000);

        assert(getTotal() == 30000);
    }
}
