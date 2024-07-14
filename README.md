# NFT Generator

A simple NFT generator implemented in Solidity, showcasing the use of `require()`, `assert()`, and `revert()` statements for error handling and contract integrity.

# Video Demos
[Part 1](https://www.loom.com/share/04e3495db9d84c5fac0c5ad837b1a3d2?sid=82eb8b02-0617-41da-95bc-7c34fd31a6af)
[Part 2](https://www.loom.com/share/473538be9ebf4317a0f855b64b6cb411?sid=1cbe2b53-6267-4892-b8c5-f97f5b08885c)
[Part 3](https://www.loom.com/share/5509cd94a0bf4278801714d5ff57f87a?sid=18dbcb86-7d03-42c0-b442-1c58b2bc30b4)

## Description

This project demonstrates how to create a sample NFT generator on the Ethereum blockchain using Solidity. The contract allows the owner to mint new NFTs, transfer ownership, and update NFT details. It employs `require()`, `assert()`, and `revert()` statements to handle errors and ensure the security of the contract.

## Getting Started

### Installing

To get started with this project, follow these steps:

1. **Copy the Code**:
    Simply copy the [code](https://github.com/SSSerpenttt/ETH-AVAX-Intermediate---Module-1-Project/blob/main/NFTGenerator.sol) and paste it on Remix. This project requires Remix IDE for contract development and testing. No additional dependencies are needed for the smart contract itself.

2. **Open Remix**:
    Go to [Remix IDE](https://remix.ethereum.org/) and open the cloned repository files.

### Executing program

To compile and deploy the contract using Remix IDE:

1. **Compile the Contract**:
    - Open `NFTGenerator.sol` in Remix.
    - Click on the "Solidity Compiler" tab and compile the contract.

2. **Deploy the Contract**:
    - Go to the "Deploy & Run Transactions" tab.
    - Select your preferred environment (e.g., JavaScript VM, Injected Web3 for MetaMask).
    - Click on the "Deploy" button.

3. **Interact with the Contract**:
    - Use the deployed contract interface in Remix to call functions like `generateNFT`, `getNFT`, `transferOwnership`, and `updateNFT`.

#### Sample Commands
```solidity
// Generate a new NFT
generateNFT("NFT Name", "Rare");

// Get details of an NFT
getNFT(1);

// Transfer contract ownership
transferOwnership("0xNewOwnerAddress");

// Update NFT details
updateNFT(1, "Updated NFT Name", "Ultra Rare");
```
### Author
Franz Gabriel Eleccion

## License

This project is licensed under the <b>MIT License</b> - see the [LICENSE.md](https://github.com/SSSerpenttt/ETH-AVAX-Intermediate---Module-1-Project/blob/main/LICENSE) file for details
