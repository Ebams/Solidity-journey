# Add Five Storage Smart Contract

This is another project in my Solidity learning journey, focused on **inheritance and function overriding** in smart contracts.

## About the Project

`AddFiveStorage` is a smart contract that inherits from the `SimpleStorage` contract. It modifies the original `store()` function so that whenever a number is stored, **5 is added to the number before it is saved**.

For example, if a user stores `10`, the contract saves `15`.

## Features

- **Contract Inheritance:** Reuses functionality from the `SimpleStorage` contract.
- **Function Overriding:** Overrides the original `store()` function with custom behavior.
- **Automatic Addition:** Adds 5 to the number supplied before storing it.
- **Number Retrieval:** Inherits the `retrieve()` function from `SimpleStorage` to read the stored value.

## Technologies Used

- Solidity `^0.8.19`
- Ethereum Virtual Machine (EVM)
- Smart Contract Development

## What I Learned

While building this project, I practiced:

- Inheriting one smart contract from another.
- Overriding functions using the `override` keyword.
- Using the `virtual` and `override` keywords in Solidity.
- Modifying inherited functionality.
- Understanding how Solidity supports code reuse.

## How It Works

1. Deploy the `AddFiveStorage` contract.
2. Call `store()` with a number, such as `10`.
3. The contract adds `5` and stores `15`.
4. Call `retrieve()` to get the stored result.

## Purpose

This project builds on my previous `SimpleStorage` contract and helps me understand how inheritance and function overriding allow developers to extend and customize existing smart contracts.

I'm continuing to strengthen my Solidity skills and explore the fundamentals of Web3 development.
