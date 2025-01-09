# Dapp BalanceOf Function Error

This repository contains a Solidity smart contract with a bug in the `balanceOf` function.  The bug arises when attempting to retrieve the balance of an address that has not previously interacted with the contract (and therefore doesn't have an entry in the balances mapping).  This results in a runtime error.  The solution demonstrates how to handle this scenario gracefully.

## Bug

The `balanceOf` function in `bug.sol` directly accesses the `balances` mapping without checking for the existence of the provided address. If the address is not found, the function throws an error.

## Solution

The `bugSolution.sol` file presents a corrected `balanceOf` function. It checks if the address exists in the `balances` mapping before accessing it, returning 0 if the address is not found.