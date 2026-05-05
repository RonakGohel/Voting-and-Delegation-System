//SPDX-License-Identifier: MIT
pragma solidity ^0.8.33;

import {Script} from "forge-std/Script.sol";
import {ProposalSystem} from "../src/ProposalSystem.sol";

contract DeployProposalSystem is Script {
    function run() external returns (ProposalSystem) {
        vm.startBroadcast();
        ProposalSystem proposalSystem = new ProposalSystem();
        vm.stopBroadcast();
        return proposalSystem;
    }
}
