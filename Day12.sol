
pragma solidity ^0.8.13;

abstract contract Animal {
    function sound() public pure virtual returns (string memory);
    function eat(string memory food) internal virtual;
}
contract Cat is Animal {
    function sound() public pure override returns (string memory) {
        return "Meow";
    }

    function eat(string memory food) internal override { 
    }
}

contract Dog is Animal {
    function sound() public pure override returns (string memory) {
        return "Woof";
    }

    function eat(string memory food) internal override {
        
    }
}
