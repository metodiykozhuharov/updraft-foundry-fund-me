# https://github.com/Cyfrin/foundry-fund-me-cu/blob/main/Makefile

-include .env

build:
	forge build

deploy-sepolia:
	forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url $(SEPOLIA_RPC_URL) --private-key $(SEPOLIA_PRIVATE_KEY) --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv

deploy-local:
	forge script script/DeployFundMe.s.sol:DeployFundMe --rpc-url $(LOC_RPC_URL) --private-key $(LOC_PRIVATE_KEY) --broadcast -vvvv	