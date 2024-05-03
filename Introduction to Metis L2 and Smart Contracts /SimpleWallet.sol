// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleWallet {
    // Function to receive tokens. msg.value contains the amount of tokens sent.
    receive() external payable {}

    // Function to retrieve the balance of the contract
    function getBalance() public view returns (uint) {
        return address(this).balance;
    }

    // Function to send tokens from the contract to another address
    function sendTokens(address payable _to, uint _amount) public {
        require(_amount <= address(this).balance, "Insufficient balance");
        _to.transfer(_amount);
    }
}
