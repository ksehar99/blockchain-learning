// SPDX-License-Identifier: MIT

pragma solidity ^0.8.34;

import {PriceConverter} from "./PriceConverter.sol";

contract FundMe{
    using PriceConverter for uint256;

    uint256 public minimumUSD = 5e18;
    address[] public funders;
    mapping(address => uint256) public addressToAmountFunded;

    function fund() public payable{
        // Allow user to send money
        // minimum of 5 dollars

        // require(getConversionRate(msg.value) >= minimumUSD, "can't send money, send atleast 1 eth"); // 1 eth == 1e18 wei
        require(msg.value.getConversionRate() >= minimumUSD, "can't send money, send atleast 1 eth"); // it is using librar now.. msg.value passed as first parameter
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] = addressToAmountFunded[msg.sender]+msg.value;
    }

    function withdraw() public{
        for(uint funderIndex=0; funderIndex > funders.length; funderIndex++){
            address funder = funders[funderIndex];
            addressToAmountFunded[funder] = 0;
        }
    }

    
}

