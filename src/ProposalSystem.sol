//SPDX-License-Identifier: MIT
pragma solidity ^0.8.33;

/// @title Voting And Delegation Systen
/// @author Ronak Gohel
/// @notice People can make proposals, users can vote for proposals, and even delegate their votes
contract ProposalSystem {
    uint256 private sIndexNumber;

    mapping(uint256 => string) public sIndexNumberToProposal;
    mapping(string => uint256) public sProposalToIndexNumber;

    string[] private sProposals;
    uint256[] private sIndexNo;

    /// Sets Index Number to 1
    constructor() {
        sIndexNumber = 1;
    }

    /// User can call this function and submit their proposal
    /// @param proposal Submit Proposal
    function makeProposal(string memory proposal) external {
        sProposalToIndexNumber[proposal] = sIndexNumber;
        sIndexNumberToProposal[sIndexNumber] = proposal;

        sProposals.push(proposal);
        sIndexNo.push(sIndexNumber);

        sIndexNumber++;
    }

    /// Get list of all proposals along with index number
    /// @return Index Number
    /// @return Proposal
    function getAllProposals() external view returns (uint256[] memory, string[] memory) {
        return (sIndexNo, sProposals);
    }
}
