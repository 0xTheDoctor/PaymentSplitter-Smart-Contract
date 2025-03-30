# PaymentSplitter

A simple Ethereum smart contract that automatically distributes received Ether equally among a list of predefined recipients.

## Features
- Accepts Ether and splits it equally among recipients.
- Uses Solidity 0.8.2.
- Emits an event when funds are successfully distributed.

## How It Works
1. Deploy the contract with an array of payable recipient addresses.
2. Send Ether to the contract.
3. The contract automatically divides and transfers the Ether to all recipients.
4. An event (`transfercomplete`) is emitted when the transfer is complete.

## Deployment
Compile and deploy the contract using Remix, Hardhat, or Foundry. Provide an array of payable addresses during deployment.

Example in Solidity:

```solidity
address payable ;
recipients[0] = payable(0xRecipientAddress1);
recipients[1] = payable(0xRecipientAddress2);
PaymentSplitter splitter = new PaymentSplitter(recipients);
```

## Usage
- Send Ether to the deployed contract, and it will automatically distribute it.
- View recipient addresses via `recipients`.

## Events
```solidity
event transfercomplete(address _from, uint _amt);
```
Triggered when funds are distributed.
