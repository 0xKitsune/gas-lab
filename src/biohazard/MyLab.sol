// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.13;

/*

    |////////////////////////////|
    |  ⚠️ WARNING  [ BIOHAZARD ]  |
    | -------------------------- |
    | Authorized personnel only. |
    |////////////////////////////|

*/

import "src/Samples.sol";
import "src/biohazard/GFlask.sol";

contract MyLab is GFlask, Labels {
    function run0(Sample0 sample0) public unoptimized(label0) {
        sample0.measureGas();
    }

    function run1(Sample1 sample1) public optimized(label1) {
        sample1.measureGas();
    }

    function test() external {
        run0(new Sample0());
        run1(new Sample1());
    }
}
