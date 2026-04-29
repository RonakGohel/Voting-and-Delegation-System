//SPDX-License-Identifier: MIT
pragma solidity ^0.8.33;

/// @title Voting And Delegation Systen
/// @author Ronak Gohel
/// @notice People can make proposals, users can vote for proposals, and even delegate the
contract ProposalSystem {
    uint256 private sIndexNumber;

    mapping(uint256 => string) public sIndexNumberToProposal;
    mapping(string => uint256) public sProposalToIndexNumber;

    string[] private sProposals;
    uint256[] private sIndexNo;

    constructor() {
        sIndexNumber = 1;
    }

    function makeProposal(string memory proposal) external {
        sProposalToIndexNumber[proposal] = sIndexNumber;
        sIndexNumberToProposal[sIndexNumber] = proposal;

        sProposals.push(proposal);
        sIndexNo.push(sIndexNumber);

        sIndexNumber++;
    }

    function getAllProposals() external view returns (uint256[] memory, string[] memory) {
        return (sIndexNo, sProposals);
    }
}
