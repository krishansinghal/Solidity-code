// SPDX-License-Identifier: GPL-3.0

//defining solidity version.
pragma solidity >=0.7.0 <0.9.0;

//creating contract named MyContract.
contract MyContract {

    //Creating function Greater to check greatest in a array.
    function Greater(uint[] memory numbers) public pure returns (uint) {
        require(numbers.length > 0, "Array must not be empty");
        
        uint greatest = numbers[0];
        
        for (uint i = 1; i < numbers.length; i++) {
            if (numbers[i] > greatest) {
                greatest = numbers[i];
            }
        }
        
        return greatest;
    }
}
