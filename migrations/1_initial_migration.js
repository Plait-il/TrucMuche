const Migrations = artifacts.require("envoiFortune");

module.exports = function (deployer) {
  deployer.deploy(Migrations);
};
