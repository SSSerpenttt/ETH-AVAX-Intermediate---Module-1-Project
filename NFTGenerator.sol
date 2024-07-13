// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NFTGenerator {
    address public owner;   //owner identifier

    //NFT instance
    struct NFT {
        address owner;
        string name;
        string rarity;
        bool minted;
    }

    mapping(uint256 => NFT) public nfts;    //retreive the nft according to the inputted ID
    uint256 public nextTokenId; // check the next available token ID

    constructor() {
        owner = msg.sender;
        nextTokenId = 1;
    }

    // owner can only call one's NFTs
    modifier onlyOwner() {
        require(msg.sender == owner, "You do not own this NFT");
        _;
    }

    // create an nft
    function generateNFT(string memory name, string memory rarity) public onlyOwner returns (uint256) {
        uint256 tokenId = nextTokenId;

        //ensure consistency for nft records
        assert(tokenId == nextTokenId);

        // create the new nft according to the provided details
        nfts[tokenId] = NFT({
            owner: msg.sender,
            name: name,
            rarity: rarity,
            minted: true
        });

        //prevent overflowing of token IDs
        require(nextTokenId + 1 > nextTokenId, "Token ID overflow");

        nextTokenId++;
        return tokenId;
    }

    // retreive the nft along with its details according to the provided id
    function getNFT(uint256 tokenId) public view returns (address, string memory, string memory, bool) {
        //only allow viewing of existing IDs
        require(tokenId > 0 && tokenId < nextTokenId, "Invalid token ID");

        NFT storage nft = nfts[tokenId];
        return (nft.owner, nft.name, nft.rarity, nft.minted);
    }

    // change address
    function transferOwnership(address newOwner) public onlyOwner {
        if (newOwner == address(0)) {
            //ensure that the address is valid
            revert("New owner address cannot be zero");
        }

        owner = newOwner;
    }

    // update nft details
    function updateNFT(uint256 tokenId, string memory name, string memory rarity) public {
        //owner can only call one's NFTs
        require(msg.sender == nfts[tokenId].owner, "Caller is not the owner of the NFT");

        // Update NFT details
        nfts[tokenId].name = name;
        nfts[tokenId].rarity = rarity;

        //ensure a successful update/edit on NFT details
        assert(keccak256(abi.encodePacked(nfts[tokenId].name)) == keccak256(abi.encodePacked(name)));
        assert(keccak256(abi.encodePacked(nfts[tokenId].rarity)) == keccak256(abi.encodePacked(rarity)));
    }
}
