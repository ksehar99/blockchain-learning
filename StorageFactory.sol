// SPDX-License-Identifier:MIT

pragma solidity ^0.8.34;

import {SimpleStorage} from "./SimpleStorage.sol";

// deploy another contractusing this contract
contract StorageFactory{
    // SimpleStorage public simpleStorage; // this is not keep tracking of the simpleStorage contracts that we deploy
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public{
        // simpleStorage = new SimpleStorage();
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public{
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrive();
    }
}
