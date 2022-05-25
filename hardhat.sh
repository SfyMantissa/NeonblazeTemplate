#!/bin/bash

TEMPLATE_PATH='/home/sfy/repos/HardhatTemplate'

git init 2>/dev/null

npm init -y && npm --save-dev install @nomiclabs/hardhat-ethers \
  @nomiclabs/hardhat-etherscan \
  @nomiclabs/hardhat-waffle \
  @primitivefi/hardhat-dodoc \
  @openzeppelin/contracts \
  @typechain/ethers-v5 \
  @typechain/hardhat \
  @types/chai \
  @types/mocha \
  @types/node \
  chai \
  dotenv \
  ethereum-waffle \
  ethers \
  hardhat \
  hardhat-deploy \
  hardhat-ethers \
  hardhat-etherscan-abi \
  prettier \
  prettier-plugin-solidity \
  solidity-coverage \
  ts-node \
  typechain \
  typescript

cp -r $TEMPLATE_PATH/contracts/ \
  $TEMPLATE_PATH/scripts/ \
  $TEMPLATE_PATH/tasks/ \
  $TEMPLATE_PATH/test/ \
  $TEMPLATE_PATH/config.ts \
  $TEMPLATE_PATH/hardhat.config.ts \
  $TEMPLATE_PATH/tsconfig.json \
  $TEMPLATE_PATH/README.md \
  $TEMPLATE_PATH/.env \
  $PWD

