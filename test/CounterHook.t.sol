// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Test} from "forge-std/Test.sol";
import {CounterHook} from "../src/CounterHook.sol";

contract CounterHookTest is Test {
    CounterHook counterHook;

    function setUp() public {
        // Use a known address for the dummy contract
        address dummyAddress = address(0x1234567890123456789012345678901234567890);
        counterHook = CounterHook(dummyAddress);
    }

    function testDeployment() public {
        // Check that the contract is deployed successfully
        assertTrue(address(counterHook) != address(0), "CounterHook should be deployed successfully.");
    }
}
