const hre = require("hardhat");

async function main() {
  const contractName = "MintableToken";
  const constructorArgs = [];

  const ContractFactory = await hre.ethers.getContractFactory(contractName);
  const contract = await ContractFactory.deploy(...constructorArgs);

  await contract.deployed();

  console.log(`${contractName} has been deployed!`);
}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
