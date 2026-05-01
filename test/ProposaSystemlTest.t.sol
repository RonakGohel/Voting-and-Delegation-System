//SPDX-License-Identifier: MIT
pragma solidity ^0.8.33;

import {Test, console} from "forge-std/Test.sol";
import {ProposalSystem} from "../src/ProposalSystem.sol";

contract ProposalTest is Test {
    ProposalSystem proposalSystem;

    function setUp() external {
        proposalSystem = new ProposalSystem();
        proposalSystem.makeProposal("First Proposal");
    }

    function testPrintingProposals() external {
        proposalSystem.makeProposal("Second Proposal");

        ProposalSystem.AllProposals[] memory allProposals = proposalSystem.getAllProposals();

        for (uint256 i = 0; i < allProposals.length; i++) {
            console.log("Index Number         :", allProposals[i].proposalIndexNumber);
            console.log("Porposal Description :", allProposals[i].proposalName);
            console.log("");
        }
    }
}
