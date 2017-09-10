pragma solidity ^0.4.11;

contract EtherVote {
	mapping (bytes32 => uint8) public numberOfVotesReceived;
	bytes32[] public listOfCandidates;

	function EtherVote(bytes32[] candidates) {
		listOfCandidates = candidates;
	}

	function isValidCandidate(bytes32 candidate) returns (bool) {
		for(uint index = 0; index < listOfCandidates.length; index++) {
			if(listOfCandidates[index] == candidate) {
				return true;
			}
		}
		return false;
	}

	function getTotalVotesForCandidate(bytes32 candidate) returns (uint8) {
		require(isValidCandidate(candidate));
		return numberOfVotesReceived[candidate];
	}

	function setVoteForCandidate(bytes32 candidate) {
		require(isValidCandidate(candidate));
		numberOfVotesReceived[candidate] += 1;
	}
}