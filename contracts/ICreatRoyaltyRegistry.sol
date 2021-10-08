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

    /**
     * @dev Utililty function to calculate the royalty fee for a token.
     * @param _tokenId uint256 token ID.
     * @param _amount uint256 wei amount.
     * @return uint256 wei fee.
     */
    function calculateRoyaltyFee(
        uint256 _tokenId,
        uint256 _amount
    ) external view returns (uint256);
