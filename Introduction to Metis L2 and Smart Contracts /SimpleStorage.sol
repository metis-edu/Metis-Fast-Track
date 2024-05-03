// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Define a contract named 'SimpleStorage'
contract SimpleStorage {
    // This will be stored permanently in the blockchain
    uint256 public storedNumber;

    // Function to store a number
    // 'public' makes the function callable from outside the contract    
    function storeNumber(uint256 _number) public {
        // Store the value passed as a parameter to the 'storedNumber' storage variable
        storedNumber = _number;
    }

    // Function to retrieve the stored number
    // 'public' makes the function callable from outside the contract
    // 'view' means that this function doesn't alter the state of the contract
    // 'returns' specifies the return type for this function
    function retrieveNumber() public view returns (uint256) {
        // Return the value of the stored number
        return storedNumber;
    }
}
