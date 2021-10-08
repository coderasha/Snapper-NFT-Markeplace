// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

interface ICreatMarketAuction {
    /**
     * @dev Set the token for sale. The owner of the token must be the sender and have the marketplace approved.
     * @param _tokenId uint256 ID of the token
     * @param _amount uint256 wei value that the item is for sale
     */
    function setSalePrice(
        uint256 _tokenId,
        uint256 _amount,
        address _owner
    ) external;