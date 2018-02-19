const Archimedes = artifacts.require("./Archimedes.sol");

module.exports = function(deployer) {
  let initialSupply = 5000e18
  deployer.deploy(Archimedes,initialSupply);
};
