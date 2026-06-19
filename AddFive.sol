// SPDX-License-Identifier: MIT

pragma solidity ^0.8.34;

import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage{
    function store(uint256 _favtnum) public override{
        myFavouriteNumber = _favtnum + 5;
    }
}
