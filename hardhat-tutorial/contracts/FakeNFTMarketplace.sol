// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract FakeNFTMarketpalce {
//purchase price for each NFT.
uint256 nftPrice = 0.1 ether;

//mapping a token id to the owner's address.
mapping (uint256=> address) public tokens;

function purchase(uint256 _tokenId) external payable{
    require(msg.value == nftPrice,"The NFT costs 0.1 ether");
    tokens[_tokenId] = msg.sender;
}

function getPrice( ) external view returns(uint256){
    return nftPrice;
}

function available( uint256 _tokenId) external view returns(bool){
    //address(0) ==0x0000000000000000000000000000000
    //This is the default value for addresses in Solidity.
    if(tokens[_tokenId] == address(0)){
        return true;
    }else{
       return false;
    }
}

}