// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyContract {
     // Mapping to store user balances, where the user's address is the key.
    mapping(address => uint256) public user_account;
    // Function to deposit ethers into the user's account.
    function deposit() public payable {
        // Ensure that the deposited amount is greater than zero.
        require(msg.value > 0, "Deposit amount must be greater than zero");

        // Add the deposited amount to the user's balance.
        user_account[msg.sender] += msg.value;
    }

    // Function to withdraw ethers from the user's account.
    function withdraw(uint256 amount) public returns (bool) {
        require(amount > 0, "Withdrawal amount must be greater than zero");

        if (user_account[msg.sender] >= amount) {
            user_account[msg.sender] -= amount;
            payable(msg.sender).transfer(amount);
            return true; // Withdrawal successful
        } else {
            return false; // Insufficient balance
        }
    }
    // Function to get the user's account balance.
    function get_balance() public view returns(uint256) {
        return user_account[msg.sender];
    }
}
