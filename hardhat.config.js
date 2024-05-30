const { HardhatUserConfig } = require("hardhat/config");
require("@nomicfoundation/hardhat-toolbox");
require("@truffle/dashboard-hardhat-plugin");


/** @type import('hardhat/config').HardhatUserConfig */

const config = {
  mocha: {
    timeout: 10000000000
  },
  solidity: "0.8.24",
  networks: {
    truffle: {
      url: "http://localhost:24012/rpc",
      allowUnlimitedContractSize:true,
      timeout: 10000000000
    }
  }
  
}

module.exports = config;