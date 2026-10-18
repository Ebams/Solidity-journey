// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {

    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContracts() public {
SimpleStorage newSimpleStorageContracts = new SimpleStorage();
listOfSimpleStorageContracts.push(newSimpleStorageContracts);
    }

    function sfStore(
    uint256 _simpleStorageIndex,
    uint256 _newSimpleStorageNumber
) public {
    SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
    mySimpleStorage.store(_newSimpleStorageNumber);
}

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
    SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
    return mySimpleStorage.retrieve();
}
}