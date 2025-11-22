// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CyberLawRegistry {
    struct Law {
        uint id;
        string title;
        string description;
    }

    address public owner;
    Law[] public laws;
    uint public lawCount;

    constructor() {
        owner = msg.sender;
    }

    // Modifier to restrict access to owner
    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }

    // WRITE: Add a new law
    function addLaw(string memory _title, string memory _description) public onlyOwner {
        lawCount++;
        laws.push(Law(lawCount, _title, _description));
    }

    // READ: Get total laws count
    function getLawCount() public view returns (uint) {
        return lawCount;
    }

    // READ: Get law by ID
    function getLaw(uint _id) public view returns (string memory, string memory) {
        require(_id > 0 && _id <= lawCount, "Invalid ID");
        Law memory l = laws[_id - 1];
        return (l.title, l.description);
    }

    // READ: Get all laws
    function getAllLaws() public view returns (Law[] memory) {
        return laws;
    }
}