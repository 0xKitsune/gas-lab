// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.13;

import "../../lib/test.sol";
import "../../lib/Console.sol";
import "../Contract.sol";

contract GasTest is DSTest {
    Optimized optimized;
    Unoptimized unoptimized;

    function setUp() public {
        unoptimized = new Unoptimized();
        optimized = new Optimized();
    }

    function testGasCost() public view {
        unoptimized.gasTest();
        optimized.gasTest();
    }
}
