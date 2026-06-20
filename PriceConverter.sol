//SPDX-License-Identifier:MIT

pragma solidity ^0.8.34;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

library PriceConverter{
    function getPrice() public view returns(uint256){
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (,int price,,,) = priceFeed.latestRoundData();
        price = price * 1e10; // 18 decimals
        return uint256(price);
    }

    function getConversionRate(uint256 _ethAmount) public view returns(uint256){
        uint256 ethPrice = getPrice();
        uint256 ethAmountInUSD = (_ethAmount*ethPrice)/1e18;
        return ethAmountInUSD;
    }

    // addreess 0x694AA1769357215DE4FAC081bf1f309aDC325306 //eth/usd from the chainlink docs.. pricefeeds
    function getVersion() public view returns(uint256){
        return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();
    }
}