// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract CalculateFactorial {


    // this function calculates the factorial of a give number
    function Factorial(uint _a) public pure returns(uint) {
       require(_a >= 0, "Input must be a non-negative integer.");
        
        uint factorial = 1;
        
        for (uint i = 1; i <= _a; i++) {
            factorial *= i;
        }
        
        return factorial;
    }

}
