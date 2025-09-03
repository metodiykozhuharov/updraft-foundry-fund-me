# https://github.com/Cyfrin/foundry-fund-me-cu/blob/main/Makefile for more ideas

-include .env

install :
	forge install foundry-rs/forge-std && forge install Cyfrin/foundry-devops && forge install smartcontractkit/chainlink-brownie-contracts

# Sepolia test network

# In order to import a wallet with Private Key -> cast wallet import my-sepolia-account --interactive
# --delay 60 -> gives enough time for contract verification
deploy-sepolia :
	@forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url $(SEPOLIA_RPC_URL) --account my-sepolia-account --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) --delay 60 -vvvv

interact-sepolia-fund:
	@forge script script/Interactions.s.sol:FundFundMe --rpc-url $(SEPOLIA_RPC_URL) --account my-sepolia-account --broadcast -vvvv 

interact-sepolia-withdraw:
	@forge script script/Interactions.s.sol:WithdrawFundMe --rpc-url $(SEPOLIA_RPC_URL) --account my-sepolia-account --broadcast -vvvv

# Local network

deploy-local:
	forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url $(LOC_RPC_URL) --private-key $(LOC_PRIVATE_KEY) --broadcast -vvvv

interact-local-fund:
	forge script script/Interactions.s.sol:FundFundMe --rpc-url $(LOC_RPC_URL) --private-key $(LOC_PRIVATE_KEY) --broadcast -vvvv

interact-local-withdraw:
	forge script script/Interactions.s.sol:WithdrawFundMe --rpc-url $(LOC_RPC_URL) --private-key $(LOC_PRIVATE_KEY) --broadcast -vvvv

