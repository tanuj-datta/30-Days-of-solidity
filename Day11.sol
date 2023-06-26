
pragma solidity ^0.8.13;

contract Voting {
    event VoteRecorded(address indexed voter, string candidate);

    mapping(string => uint256) public candidates;

    constructor() {
        candidates["Candidate 1"] = 0;
        candidates["Candidate 2"] = 0;
}

    function vote(string memory _candidate) public {
        candidates[_candidate]++;
        emit VoteRecorded(msg.sender, _candidate);
    }
}
