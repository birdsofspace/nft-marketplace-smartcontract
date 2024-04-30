const { HardhatUserConfig } = require("hardhat/config");
require("@nomicfoundation/hardhat-toolbox");
require("@truffle/dashboard-hardhat-plugin");


/** @type import('hardhat/config').HardhatUserConfig */

const config = {
  mocha: {
    timeout: 10000000000
  },
  solidity: "0.8.17",
  networks: {
    truffle: {
      url: "http://localhost:24012/rpc",
      allowUnlimitedContractSize:true,
    }
  }
}

module.exports = config;