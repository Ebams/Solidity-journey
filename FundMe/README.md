# FundMe Smart Contract

This project is part of my Solidity and Web3 development journey. It builds on my previous projects by introducing payable functions, ETH-to-USD conversion, ownership control, and withdrawing funds from a smart contract.

## About the Project

`FundMe` is a crowdfunding smart contract that allows users to send ETH to the contract, provided their contribution meets a minimum USD value. It uses Chainlink Price Feeds to calculate the USD value of ETH and records each funder's contribution.

The contract also includes an owner-only withdrawal function that allows the contract owner to withdraw the collected ETH.

## Features

- **Accept ETH Contributions:** Uses the `fund()` function to accept ETH from users.
- **Minimum Funding Requirement:** Requires contributions to be worth at least $5 USD, based on the Chainlink price feed.
- **ETH-to-USD Conversion:** Uses the `PriceConverter` library to calculate the USD value of ETH contributions.
- **Track Funders:** Stores contributor addresses and tracks their total contributions using a mapping.
- **Owner Access Control:** Uses a custom `onlyOwner` modifier to restrict withdrawals to the contract deployer.
- **Withdraw Funds:** Allows the owner to withdraw the contract's ETH balance and resets the recorded funding amounts.
- **Receive and Fallback Functions:** Allows the contract to respond to direct ETH transfers and calls that do not match another function, routing them through `fund()`.

## Technologies Used

- Solidity `^0.8.18`
- Ethereum Virtual Machine (EVM)
- Chainlink Price Feeds
- Custom Solidity Libraries
- Smart Contract Development

## How It Works

1. **Deployment:** The deployer becomes the contract owner.
2. **Funding:** Users call `fund()` and send ETH to the contract.
3. **Price Conversion:** The `PriceConverter` library converts the contribution into its USD equivalent.
4. **Validation:** The contract checks whether the contribution meets the minimum funding requirement.
5. **Record Keeping:** Valid contributions are added to the funder's recorded amount, and the funder's address is added to the funders array.
6. **Withdrawal:** The owner calls `withdraw()` to reset the recorded contributions and transfer the contract's ETH balance to their wallet.

## What I Learned

While building this project, I practiced:

- Using `payable` functions to receive ETH.
- Importing and using external interfaces and custom libraries.
- Integrating Chainlink Price Feeds into a smart contract.
- Using mappings and arrays to track contributions.
- Implementing constructors, custom errors, and access-control modifiers.
- Using `constant` variables and understanding `immutable` variables.
- Transferring ETH using the low-level `call` method.
- Working with `receive()` and `fallback()` functions.
- Using the Checks-Effects-Interactions pattern when handling withdrawals.

## Project Structure

- `FundMe.sol` — Main crowdfunding contract.
- `PriceConverter.sol` — Library for retrieving ETH prices and converting ETH amounts to USD values.

## Purpose

This project helped me understand how to build a basic crowdfunding smart contract that interacts with an external price feed, manages user contributions, and restricts sensitive operations to the contract owner.

It represents another step in my journey toward becoming a Solidity and Web3 developer.

**Note:** This project is intended for learning and experimentation. It should be reviewed and tested thoroughly before being used with real funds.
