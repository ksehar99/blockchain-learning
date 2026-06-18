// SPDX-License-Identifier: MIT
pragma solidity ^0.8.34;    // solidity version

contract SimpleStorage{
    uint256 myFavouriteNumber; // it will be initilaize with 0 //public means now we can see it modifying
    struct Person{
        string name;
        uint256 favNumber;
    }
    Person[] public listOfPeople;
    mapping(string => uint256) public nameToFavouriteNumber; // it is like a dictionary

    function store(uint256 _favtnum) public{
        myFavouriteNumber = _favtnum;
    }
    function retrive() view public returns(uint){
        return myFavouriteNumber;
    }
    function addPerson(string memory _name, uint _favouriteNumber) public {
        listOfPeople.push(Person(_name, _favouriteNumber)); // 1 liner
        // Person memory newPerson = Person(_name, _favouriteNumber);
        // listOfPeople.push(newPerson);
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}