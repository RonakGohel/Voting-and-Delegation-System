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

    function testMakeProposal() external view {
        assertEq(proposalSystem.sIndexNumberToProposal(1), "First Proposal");
        assertEq(proposalSystem.sProposalToIndexNumber("First Proposal"), 1);
    }

    function testPrintingProposals() external {
        proposalSystem.makeProposal("Second Proposal");

        (uint256[] memory indexNo, string[] memory proposals) = proposalSystem.getAllProposals();

        for (uint256 i = 0; i < proposals.length; i++) {
            console.log(indexNo[i], proposals[i]);
        }
    }
}