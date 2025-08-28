# Foundry Fund Me

This is a Project based on the Cyfrin Solidity Course.

*[⭐️ Updraft | Foundry Fund Me](https://updraft.cyfrin.io/courses/foundry/foundry-fund-me/fund-me-project-setup)*

# About

This is a minimal project allowing users to fund the contract owner with donations. The smart contract accepts ETH as donations, denominated in USD. Donations have a minimal USD value, otherwise they are rejected. The value is priced using a Chainlink price feed, and the smart contract keeps track of doners in case they are to be rewarded in the future.

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
# Install forge-std (Foundry standard library)
forge install foundry-rs/forge-std

# Install Chainlink contracts (Brownie version)
forge install smartcontractkit/chainlink-brownie-contracts@1.3.0

# Install Foundry DevOps tools
forge install Cyfrin/foundry-devops
```
⚠️ You can replace 1.3.0 with the latest release tag for the Chainlink contracts if needed.

lib/ will be automatically populated.

### 🌐 Environment Variables
Create a .env file in the project root:
```env
# Local network (Anvil)
LOC_PRIVATE_KEY=<one of Anvil keys>
LOC_RPC_URL=http://127.0.0.1:8545

# Sepolia test network
SEPOLIA_PRIVATE_KEY=<your Sepolia test account private key>
SEPOLIA_RPC_URL=<RPC URL of the Sepolia node you're working with, e.g., from Alchemy>
ETHERSCAN_API_KEY=<your Etherscan API key>
```
⚠️ Important: do not commit .env to git. Always use test accounts / fake ETH for local and Sepolia testing.

### 🏗️ Deploy & Interact (Makefile Commands)
Local Network
```bash
# Deploy FundMe locally
make deploy-local

# Fund the contract locally
make interact-local-fund

# Withdraw funds locally
make interact-local-withdraw
```
Sepolia Testnet
```bash
# Deploy & verify on Sepolia
make deploy-sepolia

# Fund the contract on Sepolia
make interact-sepolia-fund

# Withdraw funds on Sepolia
make interact-sepolia-withdraw
```
⚠️ To run interaction scripts, enable FFI in foundry.toml by uncommenting:
```toml
# Enable the following line to allow scripts to use `--ffi`
# fs_permissions = [{ access = "read", path = "./broadcast" }]
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