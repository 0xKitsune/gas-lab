// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.14;

import "../../lib/test.sol";
import "../../lib/Console.sol";

contract GasTest is DSTest {
    Contract0 c0;
    Contract1 c1;

    function setUp() public {
        c0 = new Contract0();
        c1 = new Contract1();
    }

    function testGas() public view {
        c0.mul2();
        c1.shl2();
    }
}

contract Contract0 {
    function mul2() public view {
        uint256 val = 10;
        uint256 valMulTwo = val * 2;
        valMulTwo++;
    }
}

contract Contract1 {
    function shl2() public view {
        uint256 val = 10;
        uint256 valMulTwo = val << 1;
        valMulTwo++;
    }
}

contract Contract2 {}

contract Contract3 {}

contract Contract4 {}

contract Contract5 {}

contract Contract6 {}

contract Contract7 {}
