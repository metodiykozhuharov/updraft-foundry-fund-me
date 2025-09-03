# Foundry Fund Me

*[⭐️ Updraft | Foundry Fund Me](https://updraft.cyfrin.io/courses/foundry/foundry-fund-me/fund-me-project-setup)*

# About

This is a minimal project allowing users to fund the contract owner with donations. The smart contract accepts ETH as donations, denominated in USD. Donations have a minimal USD value, otherwise they are rejected. The value is priced using a Chainlink price feed, and the smart contract keeps track of doners in case they are to be rewarded in the future.

⚠️ This is an educational project, and the code is adapted from course materials for learning purposes.

## 🔍 Proof of Execution (Sepolia)
Contract deployed, verified, funded & withdrawn on Sepolia:
https://sepolia.etherscan.io/address/0x158ed3223bddbef6dd84de4b9e4d3de94941f299

## Setup

### 🔗 Repository
```bash
git clone https://github.com/metodiykozhuharov/updraft-foundry-fund-me.git
cd updraft-foundry-fund-me
```

### ⚙️ Install Dependencies
```bash
# Install all at once
make install
```


### 🌐 Environment Variables
Create a .env file in the project root:
```ini
# Local network (Anvil)
LOC_PRIVATE_KEY=<one of Anvil keys>
LOC_RPC_URL=http://127.0.0.1:8545

# Sepolia test network
SEPOLIA_RPC_URL=<RPC URL of the Sepolia node you are working with, e.g., from Alchemy>
ETHERSCAN_API_KEY=<your Etherscan API key>
```
⚠️ Important: do not commit .env to git. Always use test accounts / fake ETH for local and Sepolia testing.

### 🏗️ Deploy & Interact (Makefile Commands)

**Local Network**

```bash
# Deploy FundMe locally
make deploy-local

# Fund the contract locally
make interact-local-fund

# Withdraw funds locally
make interact-local-withdraw
```
**Sepolia Testnet**

Import your wallet:
```bash
cast wallet import my-sepolia-account --interactive
```
```bash
# Deploy & verify on Sepolia
make deploy-sepolia

# Fund the contract on Sepolia
make interact-sepolia-fund

# Withdraw funds on Sepolia
make interact-sepolia-withdraw
```
### 🧪 Build & Test
```bash
# Compile contracts
forge build

# Run all tests
forge test

# Verbose output
forge test -vvvv
```