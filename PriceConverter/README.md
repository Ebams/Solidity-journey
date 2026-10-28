# PriceConverter Solidity Library

This project is part of my journey into Solidity and Web3 development. The `PriceConverter` library helps smart contracts retrieve ETH prices from Chainlink Price Feeds and calculate the USD value of ETH.

## About the Project

`PriceConverter` is a Solidity library designed to simplify ETH-to-USD conversions. It uses Chainlink's `AggregatorV3Interface` to access the ETH/USD price feed and provides reusable functions that other smart contracts, such as my `FundMe` contract, can use.

## Features

- **Get ETH Price:** Uses `getPrice()` to retrieve the latest ETH/USD price from Chainlink.
- **Convert ETH to USD:** Uses `getConversionRate()` to calculate the USD value of an ETH amount.
- **Reusable Code:** Allows other contracts to import the library and reuse its conversion functions.
- **Chainlink Integration:** Uses an external price feed to obtain market price data.

## How It Works

1. **Connect to Chainlink:** The library creates a reference to the ETH/USD price feed contract on the Sepolia testnet.
2. **Retrieve the Price:** The `getPrice()` function calls `latestRoundData()` to obtain the latest reported price.
3. **Adjust Decimals:** The returned price is converted from 8 decimals to 18 decimals to make it compatible with ETH amounts denominated in wei.
4. **Calculate USD Value:** The `getConversionRate()` function multiplies the adjusted ETH price by the ETH amount and divides by `1e18` to calculate the USD value.

## What I Learned

While building this library, I practiced:

- Creating and using Solidity libraries.
- Importing and interacting with external contract interfaces.
- Reading price data from Chainlink oracles.
- Working with Solidity's fixed-point decimal calculations.
- Using `internal` functions for reusable contract logic.
- Understanding how ETH amounts in wei can be converted into USD values.

## Technologies Used

- Solidity `^0.8.18`
- Chainlink Price Feeds
- Ethereum Virtual Machine (EVM)
- Solidity Libraries

## Purpose

This project helped me understand how smart contracts can access external price data and perform currency conversions. It also taught me how to separate reusable logic into a library, making my contracts cleaner and easier to maintain.

This library is used by my `FundMe` smart contract to check whether a user's ETH contribution meets the minimum USD funding requirement.

**Note:** This is a learning project. The price feed address is for Sepolia, and the code should be tested and reviewed before being used with real funds.
