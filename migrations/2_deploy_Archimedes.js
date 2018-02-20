const Archimedes = artifacts.require("./Archimedes.sol");

module.exports = function(deployer) {
  let initialSupply = 50000e18
  let maxSupply = 100000e18
  deployer.deploy(Archimedes,initialSupply,maxSupply);
};


/*
./ArchimedesCrowdSale.sol
  const startTime = web3.eth.getBlock(web3.eth.blockNumber).timestamp + 1 // one second in the future
  const endTime = startTime + (60 * 10) // 10 minutes
  const rate = new web3.BigNumber(1000) // Exchange rate 1Eth:1000Arc
  const wallet = accounts[0] // Eth wallets of this contract*/ 