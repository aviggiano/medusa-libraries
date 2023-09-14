// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "./CounterLibrary.sol";

contract Counter {
    CounterLibrary.Data private data;

    function setNumber(uint256 newNumber) public {
        CounterLibrary.setNumber(data, newNumber);
    }

    function increment() public {
        CounterLibrary.increment(data);
    }

    function number() public view returns (uint256) {
        return CounterLibrary.number(data);
    }
}
