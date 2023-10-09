// SPDX-License-Identifier: GPL-3.0

//solidity version.
pragma solidity >=0.7.0 <0.9.0;

//creating contract named A.
contract A {
//Declaring int variable named num.
    int public num;
//creating function to check even number.
    function Checkeven(int _num) public  pure returns(bool){
        if(_num%2==0){
            return true;
        }
     else{
            return false;
        }
    
    }
}
