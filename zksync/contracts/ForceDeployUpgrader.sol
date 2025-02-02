// SPDX-License-Identifier: MIT OR Apache-2.0

pragma solidity ^0.8.0;

import {IContractDeployer, DEPLOYER_SYSTEM_CONTRACT} from "./L2ContractHelper.sol";

/// @notice The contract that calls force deployment during the L2 system contract upgrade.
/// @notice It is supposed to be used as an implementation of the ComplexUpgrader.
contract ForceDeployUpgrader {
    /// @notice A function that performs force deploy
    /// @param _forceDeployments The force deployments to perform.
    function forceDeploy(IContractDeployer.ForceDeployment[] calldata _forceDeployments) external {
        IContractDeployer(DEPLOYER_SYSTEM_CONTRACT).forceDeployOnAddresses(_forceDeployments);
    }
}
