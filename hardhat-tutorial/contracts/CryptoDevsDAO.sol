// SPDX-License-Identifier :MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

//Interface for fakeNFTMarketPlace...
interface IFakeNFTMarketplace{

    function getPrice() external view returns(uint256);

    function available(uint256 _tokenId) external view returns(bool);

    function purchase (uint256 _tokenId) external payable;
    
}

//Interface for cryptoDevsNFT...
interface ICryptoDevsNFT{
    
}

contract CryptoDevsDAO is Ownable {



}
