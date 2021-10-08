// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "./IERC1155TokenCreator.sol";

/**
 * @title IERC1155CreatorRoyalty Token level royalty interface.
 */
interface ICreatRoyaltyRegistry is IERC1155TokenCreator {
    /**
     * @dev Get the royalty fee percentage for a specific ERC1155 contract.
     * @param _tokenId uint256 token ID.
     * @return uint8 wei royalty fee.
     */
    function getTokenRoyaltyPercentage(
        uint256 _tokenId
    ) external view returns (uint8);