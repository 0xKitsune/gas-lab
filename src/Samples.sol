// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.13;

contract SharedSetup {}

// Unoptimized sample
contract Sample0 is SharedSetup {
    function measureGas() external pure {
        uint256 i;
        i++;
    }
}

//Optimized sample
contract Sample1 is SharedSetup {
    function measureGas() external pure {
        assembly {
            let thing := add(0x00, 0x01)
        }
    }
}

// Customize console output
abstract contract Labels {
    string label0 = "";
    string label1 = "";
}
