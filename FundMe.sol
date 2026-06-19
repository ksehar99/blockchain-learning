// SPDX-License-Identifier: MIT

pragma solidity ^0.8.34;

contract FundMe{
    function fund() public payable{
        // Allow user to send money
        // minimum of 5 dollars
        require(msg.value >= 1e18, "can't send money, send atleast 1 eth"); // 1 eth == 1e18 wei
    }

    // function withdraw() public{}
}

