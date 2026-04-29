//SPDX-License-Identifier: MIT
pragma solidity ^0.8.33;

contract VotingSystem {
    uint256 private sIndexNumber;

    mapping (string => uint256) private sProposalToIndexNumber;
    mapping (uint256 => string) private sIndexNumberToProposal;

    event Proposal(address, string memory);

    constructor () {
        sIndexNumber = 1;
    }
    
    function makeProposal(string memory Proposal) external {
        sProposalToIndexNumber[Proposal] = sIndexNumber;
        sIndexNumberToProposal[sIndexNumber] = Proposal;

        sIndexNumber++;
    }
}