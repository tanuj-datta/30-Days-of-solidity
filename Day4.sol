pragma solidity ^0.8.13;

contract ControlStatements{

    // to return the even numbers and odd ones
    function IsEven(uint256 number) public view returns(bool) {
        if(number%2==0){
            return true;
        }
        else {
            return false;
        }
    }

    //this function is used for grading system
    function Grading(uint256 marks) public pure returns(string memory){
        if(marks>=90){
            return 'A';
        }
        else if(marks>=80){
            return 'B';
        }
         else if(marks>=70){
            return 'C';
        }
         else if(marks>=60){
            return 'D';
        }
         else if(marks>=50){
            return 'E';
        }
        else{
            return 'F';
        }
    }
    //to find the max among two numbers 
    function Max(uint256 a, uint256 b) public view returns(uint){
         return a > b ? a : b;
    } 


}
