pragma solidity ^0.4.17;


contract Bounty {
    string public ghIssueUrl;
    string public status;

    struct Hunter {
        string ghId;
        address addr;
        string codeId;
        bool winner;
    }
    mapping(bytes32 => Hunter) public hunters;
    mapping(address => bool) public contributors;

    function contribute() public payable {
        contributors[msg.sender] = true;
    }

    function addHunter(address addr, string ghId, string codeId ) public {
        Hunter memory newHunter = Hunter({
            ghId: ghId,
            addr: addr,
            codeId: codeId,
            winner: false
        });
        bytes32 idHash = keccak256(addr, ghId);
        hunters[idHash] = newHunter;
    }

    function issueSolved(address hunter, gh) public {

    }

}
