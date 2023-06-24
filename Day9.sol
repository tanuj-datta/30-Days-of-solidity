pragma solidity ^0.8.13;

contract Crowdfunding {
    address public owner;
    uint256 public targetAmount;
    uint256 public amountRaised;
    bool public isOpen;

    constructor(address _owner, uint256 _targetAmount) {
        owner = _owner;
        targetAmount = _targetAmount;
        isOpen = true;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the campaign owner can access this function");
    
    }

    modifier campaignOpen() {
        require(isOpen, "The campaign is closed");
    
    }

    function contribute() public payable campaignOpen {
        require(amountRaised + msg.value <= targetAmount, "The target amount has already been reached");
        amountRaised += msg.value;
    }

    function closeCampaign() public onlyOwner {
        isOpen = false;
    }
}
