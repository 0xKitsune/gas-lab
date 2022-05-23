// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.8.13;

import "../../lib/test.sol";
import "../../lib/Console.sol";

contract GasTest is DSTest {
    GasReport gasReport;

    function setUp() public {
        gasReport = new GasReport();
    }

    function testGas() public {
        gasReport.addTest(100, 3434);
        gasReport.addAssemblyTest(100, 3434);
        gasReport.subTest(3434, 100);
        gasReport.subAssemblyTest(3434, 100);
        gasReport.mulTest(3434, 100);
        gasReport.mulAssemblyTest(3434, 100);
        gasReport.divTest(3434, 100);
        gasReport.divAssemblyTest(3434, 100);
    }
}

contract GasReport {
    function addTest(uint256 a, uint256 b) public pure {
        uint256 c = a + b;
    }

    function addAssemblyTest(uint256 a, uint256 b) public pure {
        assembly {
            let c := add(a, b)

            if lt(c, a) {
                mstore(0x00, "overflow")
                revert(0x00, 0x20)
            }
        }
    }

    function subTest(uint256 a, uint256 b) public pure {
        uint256 c = a - b;
    }

    function subAssemblyTest(uint256 a, uint256 b) public pure {
        assembly {
            let c := sub(a, b)

            if gt(c, a) {
                mstore(0x00, "underflow")
                revert(0x00, 0x20)
            }
        }
    }

    function mulTest(uint256 a, uint256 b) public pure {
        uint256 c = a * b;
    }

    function mulAssemblyTest(uint256 a, uint256 b) public pure {
        assembly {
            let c := mul(a, b)

            if lt(c, a) {
                mstore(0x00, "overflow")
                revert(0x00, 0x20)
            }
        }
    }

    function divTest(uint256 a, uint256 b) public pure {
        uint256 c = a * b;
    }

    function divAssemblyTest(uint256 a, uint256 b) public pure {
        assembly {
            let c := div(a, b)

            if gt(c, a) {
                mstore(0x00, "underflow")
                revert(0x00, 0x20)
            }
        }
    }
}
