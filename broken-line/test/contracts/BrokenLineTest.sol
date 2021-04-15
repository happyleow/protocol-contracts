// SPDX-License-Identifier: MIT

pragma solidity >=0.6.2 <0.8.0;
pragma abicoder v2;

import "../../contracts/LibBrokenLine.sol";

contract BrokenLineTest is BrokenLineDomain {
    using BrokenLineLibrary for BrokenLine;

    BrokenLine public brokenLine;

    function add(Line memory line) public {
        brokenLine.add(line);
    }

    function update(uint timeTo) public {
        brokenLine.update(timeTo);
    }

    function getCurrent() view public returns (Line memory) {
        return brokenLine.initial;
    }
}
