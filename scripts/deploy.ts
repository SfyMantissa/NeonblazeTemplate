import * as fs from 'fs';
import { ethers } from "hardhat";
import config from '../config';

const updateDeploymentAddress = async (address: string) => {
  let config: string = './config.ts';
  fs.readFile(config, 'utf-8', (err: unknown, data: string) => {
    if (err) throw err;
    let regex = /DEPLOYMENT_ADDRESS: ".*",/g;
    let update = data.replace(
      regex,
      'DEPLOYMENT_ADDRESS: "' + address + '",'
    );

    fs.writeFile(config, update, 'utf-8', (err: unknown) => {
      if (err) throw err;
      console.log('Updated DEPLOYMENT_ADDRESS in config.ts.');
    });
  });
};

const main = async () => {
  const Greeter = await ethers.getContractFactory("Greeter");
  const greeter = await Greeter.deploy("Hi!");
  await greeter.deployed();
  console.log("Staking deployed to:", greeter.address);
  updateDeploymentAddress(greeter.address);
};

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
