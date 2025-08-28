# https://github.com/Cyfrin/foundry-fund-me-cu/blob/main/Makefile for more ideas

-include .env

# Sepolia test network

deploy-sepolia:
	forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url $(SEPOLIA_RPC_URL) --private-key $(SEPOLIA_PRIVATE_KEY) --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) --delay 60 -vvvv

interact-sepolia-fund:
	forge script script/Interactions.s.sol:FundFundMe --rpc-url $(SEPOLIA_RPC_URL) --private-key $(SEPOLIA_PRIVATE_KEY) --broadcast -vvvv 

interact-sepolia-withdraw:
	forge script script/Interactions.s.sol:WithdrawFundMe --rpc-url $(SEPOLIA_RPC_URL) --private-key $(SEPOLIA_PRIVATE_KEY) --broadcast -vvvv


# Local network

deploy-local:
	forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url $(LOC_RPC_URL) --private-key $(LOC_PRIVATE_KEY) --broadcast -vvvv

interact-local-fund:
	forge script script/Interactions.s.sol:FundFundMe --rpc-url $(LOC_RPC_URL) --private-key $(LOC_PRIVATE_KEY) --broadcast -vvvv

interact-local-withdraw:
	forge script script/Interactions.s.sol:WithdrawFundMe --rpc-url $(LOC_RPC_URL) --private-key $(LOC_PRIVATE_KEY) --broadcast -vvvv

