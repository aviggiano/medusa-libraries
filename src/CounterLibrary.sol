// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

library CounterLibrary {
    struct Data {
        uint256 number;
    }
    function setNumber(Data storage data, uint256 newNumber) external {
        data.number = newNumber;
    }
    function increment(Data storage data) external {
        data.number++;
    }
    function number(Data storage data) external view returns (uint256) {
        return data.number;
    }
}
