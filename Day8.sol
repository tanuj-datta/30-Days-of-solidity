
pragma solidity ^0.8.13;

contract Token {
    string public name;
    string public symbol;
    uint256 public totalSupply;
    mapping(address => uint256) balances;

    constructor(string memory _name, string memory _symbol, uint256 _totalSupply) {
        name = _name;
        symbol = _symbol;
        totalSupply = _totalSupply;
        balances[msg.sender] = _totalSupply;
    }

    function balanceOf(address _address) public view returns (uint256) {
        return balances[_address];
    }

    function transfer(address _recipient, uint256 _amount) public {
        require(balances[msg.sender] >= _amount, "Insufficient funds");
        
        balances[msg.sender] -= _amount;
        balances[_recipient] += _amount;
    }
}

contract TokenExchange {
    function listToken(Token _token) public {
       
    }

    function buyToken(Token _token, uint256 _amount) public {
    }
}
