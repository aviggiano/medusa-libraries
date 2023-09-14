// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "../src/Counter.sol";

contract MedusaTester {
    Counter private counter;

    constructor() {
        counter = new Counter();
        counter.setNumber(0);
    }

    function increment() public {
        counter.increment();
        assert(counter.number() == 1);
    }

    function setNumber(uint256 x) public {
        counter.setNumber(x);
        assert(counter.number() == x);
    }
}
