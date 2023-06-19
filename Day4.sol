// Lopps, structure and functions in solidity 
pragma solidity ^0.8.13;

contract DaYFour {
    uint256[] numbers;

    struct person{
        string name;
        uint256 age;
    }

    person[] people;

    function ArraySum(uint256[] memory _numbers) public pure returns {
        uint256 sum =0;
        for(uint256 i=0;i<_numbers.length;i++) {
            sum = sum+ _numbers[i];
        }
        return sum;
    }

     function addPerson(string memory _name, uint256 _age) public {
        Person memory newPerson = Person(_name, _age);
        people.push(newPerson);
}

}
