// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract contractWithMultipleStatements {
    address public owner;
    uint public value;

    constructor() {
        owner = msg.sender;
    }

    function setValue(uint _value) external {
        require(msg.sender == owner, "Only the owner can set the value.");
        value = _value;
    }

    function increaseValue(uint _amount) external {
        uint oldValue = value;
        value += _amount;
        assert(value >= oldValue);
    }

    function withdraw(uint amount) external {
        require(amount <= value, "Insufficient balance.");
        value -= amount;
        if (value < 100) {
            revert("Minimum balance requirement not met."); 
        }
    }
}
