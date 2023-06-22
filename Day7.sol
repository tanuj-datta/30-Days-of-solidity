// Inheritance and deploymemnt

pragma solidity ^0.8.13;

contract Ownable {
 address public owner;
 
}
constructor() {
 owner = msg.sender;
}
modifier onlyOwner() {
  require(msg.sender==owner, "only contract owner can access this");
    }

}
contract Token is Ownable {
string public name;
string public symbol;

constructor(string memory _name, string memory _symbol) {
  name = _name;
  symbol = _symbol;

}
}
