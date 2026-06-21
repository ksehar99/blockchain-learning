# Blockchain Learning 
Hi, I'm Khadija Sehar, a Solidity developer in training from Karachi, Pakistan.    
Here documenting my Solidity journey using the Cyfrin Updraft course.

## Certifications
- [Cyfrin Updraft — Solidity 101](https://profiles.cyfrin.io/u/khadijasehar10/achievements/solidity)

## Course
[Cyfrin Updraft]([https://updraft.cyfrin.io](https://updraft.cyfrin.io/courses/solidity)) — Solidity Smart Contract Development

## Progress

### Solidity 101 — Section 1 — Simple Storage
- Contract setup, versioning, SPDX license
- Basic types — uint256, int256, bool, string, address, bytes32
- Functions, visibility, view & pure
- Arrays & structs
- Compiler errors and warnings
- Memory, storage, calldata — intro
- Mappings
- Deploying first contract on testnet via MetaMask

*Deploying my first contract on Sepolia testnet via MetaMask was
fascinating - seeing code go live on an actual blockchain
for the first time felt very real.*

### Solidity 101 — Section 2 — Storage Factory
- Factory pattern — deploying contracts from within a contract
- Importing contracts into other contracts
- Composability in Solidity
- Interacting with other contracts using ABI + Address
- Inheritance & function overrides — virtual & override keywords

*The factory pattern genuinely surprised me — I didn't expect that a contract
could deploy and manage other contracts entirely on-chain. It shifted how I
think about composability in Solidity.*

### Solidity 101 — Section 3 — Remix Fund Me
- Sending ETH through a function — payable, msg.value
- Reverts — require, revert
- Chainlink oracles — oracle problem, price feeds
- Interfaces — AggregatorV3Interface
- Importing from NPM/GitHub — @chainlink/contracts
- Getting real time ETH/USD price from Chainlink
- Solidity math — decimals, type casting, multiply before divide
- msg.sender — tracking funders
- Named mappings
- Libraries in Solidity
- SafeMath — checked vs unchecked arithmetic
- For loops — resetting arrays
- Transfer, Send, Call — withdrawing ETH from contract
- Constructor — setting contract owner
- Modifiers — onlyOwner pattern
- Immutable & Constant — gas optimization
- Custom errors — gas efficient reverts
- Receive & Fallback functions

*Chainlink oracles reshaped how I think about blockchains — I assumed they 
could access anything, but they're completely cut off from the real world by 
design. A whole decentralized network exists just to bring in something as 
simple as a price. And then there was the moment I sent ETH directly from 
MetaMask to the contract address — no function call, nothing. The receive() 
function just quietly caught it and handled everything on its own. That moment 
made the contract feel genuinely alive.*

### Solidity 101 — Section 4 — AI Prompting & Getting Help
- Formatting questions for AI and forums effectively
- Using GitHub for asking well-structured questions
- Markdown for documentation
- SpeedRunEthereum — intro to hands-on challenges

## Tools Used
- [Remix IDE](https://remix.ethereum.org)
- MetaMask
- Sepolia Testnet + faucet
- Chainlink Price Feeds (ETH/USD)

## Reference
- [Cyfrin Simple Storage Codebase](https://github.com/cyfrin/remix-simple-storage-cu)
- [Cyfrin Storage Factory Codebase](https://github.com/cyfrin/remix-storage-factory-cu)
- [Cyfrin Fund Me Codebase](https://github.com/Cyfrin/remix-fund-me-cu)
- [Chainlink Price Feeds](https://docs.chain.link/docs/get-the-latest-price/)
- [Full Course Repository](https://github.com/Cyfrin/foundry-full-course-cu)
