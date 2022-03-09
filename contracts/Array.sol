// SPDX-License-Identifier: MIT
pragma solidity ^0.8.12;

contract Array {
    uint[] public array1;
    uint[3] public array2;
    uint[] public array3 = [1,2,3];

    function push(uint _number) public {
        array1.push(_number);
    }

    function pop() public {
        array1.pop();
    }

    function getLength() public view returns(uint) {
        return array1.length;
    }

    function deleteElement(uint _idx) public {
        require(_idx >= 0 && _idx < array1.length, "Index out of range.");

        delete array1[_idx];
    }

    function compactDelete(uint _idx) public {
        require(_idx >= 0 && _idx < array1.length, "Index out of range.");

        if (_idx == array1.length) {
            array1.pop();
            return;
        }

        uint lastElement = array1[array1.length - 1];
        array1[_idx] = lastElement;
        array1.pop();
    }
}
