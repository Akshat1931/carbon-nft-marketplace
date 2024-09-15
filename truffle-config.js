module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*", // Match any network id
    },
  },
  compilers: {
    solc: {
      version: "0.8.13", // Specify the compiler version
      settings: {
        optimizer: {
          enabled: false,
          runs: 200
        },
        evmVersion: "istanbul"
      }
    }
  }
};
