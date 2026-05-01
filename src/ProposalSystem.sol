//SPDX-License-Identifier: MIT
pragma solidity ^0.8.33;

/// @title Proposal System
/// @author Ronak Gohel
/// @notice People can make proposals
contract ProposalSystem {
    uint256 private sIndexNumber;

    struct AllProposals {
        string proposalName;
        uint256 proposalIndexNumber;
    }

    AllProposals[] private allProposals;

    /// Sets Index Number to 1
    constructor() {
        sIndexNumber = 1;
    }

    /// User can call this function and submit their proposal
    /// @param proposal Submit Proposal
    function makeProposal(string memory proposal) external {
        allProposals.push(AllProposals({proposalName: proposal, proposalIndexNumber: sIndexNumber}));

        sIndexNumber++;
    }

    /// Get list of all proposals along with index number
    /// @return Struct of all proposals
    function getAllProposals() external view returns (AllProposals[] memory) {
        return allProposals;
    }
}
