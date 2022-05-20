// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.13;

contract Optimized {
    function gasTest() public pure {
        assembly {
            let thing := 0x00
        }
    }
}

contract Unoptimized {
    function gasTest() public pure {
        assembly {
            let thing := 0x00
        }
    }
}
