// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

import "../lib/openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";

contract ERC721L is ERC721 {
    event CommercialExploitation(uint256 tokenID, string uri);

    constructor(string memory name_, string memory symbol_)
        ERC721(name_, symbol_)
    {}

    function getLicenseId(uint256 tokenId)
        external
        view
        virtual
        returns (uint256)
    {}

    function licenseURI(uint256 tokenId)
        external
        view
        virtual
        returns (string memory)
    {}

    function copyrightOwner(uint256 tokenId)
        external
        virtual
        returns (address)
    {}

    function requestReproductionToken(uint256 tokenId)
        external
        virtual
        returns (bool)
    {}

    function requestDerivativeToken(uint256 tokenId)
        external
        virtual
        returns (bool)
    {}

    function logCommercialExploitation(uint256 tokenId, string calldata uri)
        external
        returns (bool)
    {
        emit CommercialExploitation(tokenId, uri);
    }
}
