# Simple Storage Smart Contract

This is my first Solidity smart contract, created as part of my journey into blockchain development and smart contract programming.

## About the Project

`SimpleStorage` is a basic Ethereum smart contract that allows users to store and retrieve a favorite number. It also allows users to add people's names and their favorite numbers to a list.

## Features

- **Store a Number:** Saves a favorite number on the blockchain using the `store()` function.
- **Retrieve a Number:** Returns the stored number using the `retrieve()` function.
- **Add People:** Stores people's names and favorite numbers in an array using the `addPerson()` function.
- **Name-to-Number Mapping:** Uses a mapping to associate each name with a favorite number.

## Technologies Used

- Solidity `^0.8.19`
- Ethereum Virtual Machine (EVM)
- Smart Contract Development

## What I Learned

While building this project, I practiced:
- Declaring state variables.
- Creating structs to organize data.
- Working with arrays and mappings.
- Writing public, view, and virtual functions.
- Storing and retrieving data in a smart contract.

## Purpose

This project is a starting point in my Solidity and Web3 development journey. I built it to understand the basics of writing smart contracts and managing on-chain data.

More projects coming as I continue learning!

**Author:** Etim Ebam







# Storage Factory Smart Contract

This is my second Solidity project, built as part of my journey into blockchain development and smart contract programming.

## About the Project

`StorageFactory` is a smart contract that creates and manages multiple instances of the `SimpleStorage` contract. It allows users to deploy new storage contracts, store numbers in specific contracts, and retrieve the stored numbers.

The project demonstrates how one smart contract can interact with other deployed smart contracts.

## Features

- **Create Storage Contracts:** Uses `createSimpleStorageContracts()` to deploy new `SimpleStorage` contract instances.
- **Store Numbers:** Uses `sfStore()` to save a number in a selected storage contract.
- **Retrieve Numbers:** Uses `sfGet()` to retrieve a number from a selected storage contract.
- **Manage Multiple Contracts:** Maintains an array of deployed `SimpleStorage` contracts so they can be accessed by index.

## Technologies Used

- Solidity `^0.8.18`
- Ethereum Virtual Machine (EVM)
- Smart Contract Development

## What I Learned

While building this project, I practiced:

- Importing and reusing another Solidity contract.
- Deploying contracts from within another smart contract.
- Storing contract references in an array.
- Calling functions on deployed contract instances.
- Using array indexes to interact with specific contracts.
- Understanding how smart contracts communicate with one another.

## How It Works

1. Call `createSimpleStorageContracts()` to deploy a new `SimpleStorage` contract.
2. Use `sfStore()` with the contract's index and a number to store a value.
3. Call `sfGet()` with the same index to retrieve the stored value.

## Purpose

This project builds on my first `SimpleStorage` contract and helps me understand contract deployment, contract-to-contract interaction, and managing multiple smart contract instances.

I'm continuing to build my Solidity skills and explore Web3 development one project at a time.
