// SPDX-License-Identifier: MIT

pragma solidity ^0.8.34;

import {PriceConverter} from "./PriceConverter.sol";

// using constant and immutable and custom errors to make the contract gas efficient
error NotOwner();

contract FundMe{
    using PriceConverter for uint256;

    uint256 public constant MINIMUM_USD = 5e18;
    address[] public funders;
    mapping(address => uint256) public addressToAmountFunded;

    address immutable i_owner;
    constructor(){
        i_owner = msg.sender; // here msg.sender is the one who deployed the contract
    }

    function fund() public payable{
        // Allow user to send money
        // minimum of 5 dollars

        // require(getConversionRate(msg.value) >= minimumUSD, "can't send money, send atleast 1 eth"); // 1 eth == 1e18 wei
        require(msg.value.getConversionRate() >= MINIMUM_USD, "can't send money, send atleast 1 eth"); // it is using librar now.. msg.value passed as first parameter
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] = addressToAmountFunded[msg.sender]+msg.value;
    }

    function withdraw() public{
        // we need to make sure that only the owner can withdraw the money
        // require(msg.sender == owner, "Must be Owner!"); // but we are lazy so we'll use the modifiers instead
        
        // we need to reset the array and the mapping
        for(uint funderIndex=0; funderIndex < funders.length; funderIndex++){
            address funder = funders[funderIndex];
            addressToAmountFunded[funder] = 0;

            // resetting the array
            funders = new address[](0); // 0 here creating the array of length of 0

            // now withdraw(sending the ether back who is calling the func)
            // three ways: transfer, send, call

            //transfer
            // msg.sender = type address
            // payable(msg.sender) = tyoe payable address
            // payable(msg.sender).transfer(address(this).balance); // if it fails it reverts and throws an error

            //send
            // bool sendSuccess = payable(msg.sender).send(address(this).balance); // if it fails it returns false)
            // require(sendSuccess, "send failed");

            // call
            (bool callSuccess,) = payable(msg.sender).call{value: address(this).balance}("");
            require(callSuccess, "call failed");
            }

        }

    // receive() — jab koi seedha ETH bheje bina koi function call kiye
    // fallback() — jab koi aisa function call kare jo exist hi nahi karta

    receive() external payable{
        fund();
    }

    fallback() external payable{
        fund();
    }
    

    modifier OnlyOwner() {
            // require(msg.sender == i_owner, " Must be Owner!");
            if(msg.sender != i_owner){ revert NotOwner();}
            _;
    }
}


