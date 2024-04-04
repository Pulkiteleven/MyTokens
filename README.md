# Hello World

This Solidity program is a simple "Token Manager" program that demonstrates the basic syntax and functionality of the Solidity programming language. The purpose of this program is to serve as a starting point for those who are new to Solidity and want to get a feel for how it works.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract of "Token" is in file named "MyTokens.sol", where there are three public variable namely "tokenName", "tokenAbbrv" which are string and "tokenSupply" is uint, also there exists mapping from every address to the token supply of that specific address.
It has two public functions namely "mint" which takes uint _value and address _address as a function params which adds the _value in tokenSupply also in the mapping of that address, 
also there is function named "burn" which deduct the _value from tokenSupply as well as from the mapping of that address if the total tokens is equal or more than the _value;


## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., MyToken.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract MyToken {

    // public variables here
    string public tokenName = "SHIVA";
    string public tokenAbbrv = "SHI";
    uint public  tokenSupply = 0;

    // mapping variable here

    mapping (address => uint) public  balances;

    // mint function

    function mint(address _address, uint _value) public {
        tokenSupply += _value;
        balances[_address] += _value;
    }

    function burn(address _address, uint _value) public {
        if(balances[_address] >= _value){
        tokenSupply -= _value;
        balances[_address] -= _value;
        }
    }



    // burn function

}


```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile MyToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by passing the params in mint and burn functions and checking the values if it updates or not..

## Authors

Pulkit Dubey 

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
