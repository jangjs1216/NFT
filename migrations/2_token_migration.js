const SkinToken = artifacts.require("skinNFT");

module.exports = function (deployer) {
  deployer.deploy(SkinToken);
};
