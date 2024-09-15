// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13; // Match the version specified in truffle-config.js

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract CarbonCredit is ERC721 {
    uint256 public tokenCounter;

    constructor() ERC721("CarbonCredit", "CRC") {
        tokenCounter = 0;
    }

    function createCarbonCredit() public returns (uint256) {
        uint256 newTokenId = tokenCounter;
        _safeMint(msg.sender, newTokenId);
        tokenCounter++;
        return newTokenId;
    }
}
