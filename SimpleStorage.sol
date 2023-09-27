// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract SimpleStorage {
    uint256 public favoriteNumber=5;
    bool favoriteBool=false;


    struct People {
        uint256 favoriteNumber;
        string name;
    }

    //for only one person
    //People public one_person =People({favoriteNumber:33,name:"Natarajan"});

    //creating array
    People[] public people;
    //creating mapping
    mapping (string=>uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber=_favoriteNumber;
    }

    //view to just return to view the values
    //function retrive() public view returns (uint256) {
    //   return favoriteNumber;
    //}

    // pure for math operation without changing the state
    // function addition(uint256 _favoriteNumber) public pure returns(uint256) {
    //     return _favoriteNumber+_favoriteNumber;
    // }

    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        people.push(People({favoriteNumber:_favoriteNumber,name:_name}));
        nameToFavoriteNumber[_name]=_favoriteNumber;
    }




}