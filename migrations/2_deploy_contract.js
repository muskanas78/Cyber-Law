const CyberLawRegistry = artifacts.require("CyberLawRegistry");

module.exports = function (deployer) {
  deployer.deploy(CyberLawRegistry);
};