//Data types, variables ad functions
pragma solidity ^0.8.13;

contract Hello {
    string public greeting;

    constructor() {
        greeting = "Hello";
    }

    function setGreeting(string memory newGreeting) public {
        greeting = newGreeting;
    }

    function getGreeting() public view returns (string memory) {
        return greeting;
    }

    function resetGreeting() public {
        greeting = "Hello";
    }
}
