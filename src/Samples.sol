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
        uint256 i;
        ++i;
    }
}

// Customize console output
abstract contract Labels {
    // string label0 = "Testing Sample0";
    // string label1 = "Testing Sample1";
}
