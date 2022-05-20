// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.13;

import "../../lib/test.sol";
import "../../lib/Console.sol";

contract GasTest is DSTest {
    Optimized optimized;
    Unoptimized unoptimized;

    function setUp() public {
        unoptimized = new Unoptimized();
        optimized = new Optimized();
    }

    function testGasCost() public {
        unoptimized.gasTest();
        optimized.gasTest();
    }
}

contract Optimized {
    function gasTest() external {}
}

contract Unoptimized {
    function gasTest() external {}
}
