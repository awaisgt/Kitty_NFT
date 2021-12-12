//SPDX-License-Identifier: MIT
pragma solidity 0.6.6;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
contract KittyNFT is ERC721{
    uint256 public counter;
    constructor() public ERC721 ("KITTY NFT","KITTY"){
        counter = 0;
    }


    function create_nft(string memory tokenURI) public returns(uint256){
        uint256 token_id =counter;
        _safeMint(msg.sender,token_id);
        _setTokenURI(token_id,tokenURI);
        counter = counter + 1;
        return token_id;

    }
}