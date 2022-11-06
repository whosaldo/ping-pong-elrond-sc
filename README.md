# Simple Ping-Pong Smart Contract on Elrond Blockchain

First Smart Contract (that works) made by me.

Deploy:

```
erdpy contract deploy --pem <YourPem>.pem --proxy="https://devnet-gateway.elrond.com" --chain="D" --recall-nonce --gas-limit 8000000 --project ping-pong/ --arguments="<input your desired seconds>" --send 
```

Interact with existing contract:

Ping:
```
erdpy contract call <Contract Address> --pem <YourPem>.pem --proxy="https://devnet-gateway.elrond.com" --chain="D" --function="ping" --value=<enter how much xegld wanna send !biguint> --recall-nonce --gas-limit 8000000 --send 
```
Pong:
```
erdpy contract call  --pem walletKey.pem --proxy="https://devnet-gateway.elrond.com" --chain="D" --function="pong" --recall-nonce --gas-limit 8000000 --send
```
If everything works as planned you should receive your xEgld back! :D






Ubuntu 22.04

Erdpy 2.0.3

Visual Studio Code
