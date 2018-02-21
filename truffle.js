var HDWalletProvider = require("truffle-hdwallet-provider");
var mnemonic = "attract sad pink pass happy laundry wing champion shove mistake spy peace ";

module.exports = {
  networks: {
    ganache: {
      host: 'localhost', 
      port: 7545,
      network_id: 5777
    },
    dev: {
      host: "localhost",
      port: 8545,
      network_id: "15"
    },
    ropsten: {
      provider: function() {
        return new HDWalletProvider(mnemonic, "https://ropsten.infura.io/Mi244XkfYUsjy7JBhmEj")
      },
      network_id: 3,
      gas: 4712388
      
    } 
  }
};
