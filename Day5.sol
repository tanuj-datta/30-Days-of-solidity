// mapping and modifiers

pragma solidity ^0.8.13;

contract MappingAndModifiers {
    mapping(address => uint256) balances;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can access this function");
    
    }

    modifier positiveAmount(uint256 _amount) {
        require(_amount > 0, "Amount must be positive");
      
    }

    function deposit(uint256 _amount) public onlyOwner positiveAmount(_amount) {
        balances[msg.sender] += _amount;
    }

    function getBalance(address _address) public view returns (uint256) {
        return balances[_address];
    }
}
