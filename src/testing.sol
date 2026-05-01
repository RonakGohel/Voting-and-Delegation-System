//SPDX-License-Identifier: MIT
pragma solidity ^0.8.33;

contract ProposalSystem {
    struct AllProposals {
        string proposalName;
        uint proposalIndexNumber;
    }

    AllProposals[] public proposals;

    function makeProposal(string memory _desc) public {
        proposals.push(AllProposals(_desc, 0));
    }

    function getAllProposals() public view returns (AllProposals[] memory) {
        return proposals;
    }
}
