
// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0

// Solidity version and compiler directive
pragma solidity ^0.8.17;

// Start of the contract definition
contract HelloWorld {

    // Public state variable named value of type uint256
    uint256 public value;

    // Function named setValue that takes a uint256 parameter named _value and is public
    function setValue(uint256 _value) public {

        // require statement to ensure that _value is greater than 0 with an error message if the condition fails
        require(_value > 0, "Value must be greater than 0");

        // Set the value state variable to _value
        value = _value;

        // assert statement to ensure that value has been set correctly, by checking if it is equal to _value
        assert(value == _value);
    }


    // Function named setValueAndRevert that takes a uint256 parameter named _value and is public
    function setValueAndRevert(uint256 _value) public {

        // require statement to ensure that _value is less than or equal to 100, with an error message if the condition fails
        require(_value <= 100, "Value must be less than or equal to 100");

        // Set the value state variable to _value
        value = _value;

        // if statement to check if value is not equal to _value, and revert the transaction with an error message if the condition is true. The revert() statement will revert the entire transaction and refund the unused gas.
        if (value != _value) {
            revert("Value not set correctly");
        }
    }
}
