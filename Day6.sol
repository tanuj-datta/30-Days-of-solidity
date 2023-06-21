//events and error handling in Solidity
pragma solidity ^0.8.13;
contract EventsAndErrorHandling {
    mapping(address => uint256) balances;

    event Transfer(address indexed sender, address indexed recipient, uint256 amount);

    function transfer(address _recipient, uint256 _amount) public {
        require(balances[msg.sender] >= _amount, "Insufficient funds");
        
        balances[msg.sender] -= _amount;
        balances[_recipient] += _amount;

        emit Transfer(msg.sender, _recipient, _amount);
    }

    function getBalance(address _address) public view returns (uint256) {
        return balances[_address];
    }
}
