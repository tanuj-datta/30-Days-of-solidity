pragma solidity ^0.8.13;

contract DayTwo {
    uint public counter;

constructor(){
    counter = 0;
}

function Parameter() public{

    counter++;


}
function ReturnCounter() public view returns(uint){

    return counter;
}
function increment(uint n) public{
    for(uint i=0;i<n;i++){
        i=i+1;
                }
        } 

}
