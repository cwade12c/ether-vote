# ether-vote 
A decentralized voting application using the Ethereum blockchain architecture.

![N|Solid](http://i.imgur.com/OvMxSwt.png)  

# Features

  - Initialize a collection of candidates who will be applying for a position
  - Votes are stored on the blockchain
  - No central authority is required to trust

# Goals

This current version is a proof of concept. Voting systems can serve as a building block for many complex decentralized applications. In the future, the following goals will be completed:
* Rebuild the app using the Truffle framework
* Provide clear instructions for deploying the dapp to a testnet
* Add the ability to interact with the smart contract from the command line
* Implement a voting token (with a limited supply) into the smart contract
* Implement a payment system into the dapp that would allow users to buy/sell voting tokens


### Installation

ether-vote requires [Node.js](https://nodejs.org/) and [bower](https://bower.io/) to run.

Install the frontend dependencies:

```
bower install
```

Install the node modules:

```
npm install
```

Run `testrpc`

```
node_modules/.bin/testrpc
```

This will generate 10 keypairs (public addresses / private keys) that each have 100 Ether for testing purposes. For example:

```
EthereumJS TestRPC v4.1.1 (ganache-core: 1.1.2)

Available Accounts
==================
(0) 0x3853246f7dd692044b01786ea42a88197f6dfef9
(1) 0x1067092bee809c703ed33c11cc2ca3f3d3e33f1f
(2) 0x4b9ad5d76fc3abe51d02fa9c631fe2e6dd21261a
(3) 0xbe5dacc37242be5ca41baa25a88657e73fbae2c1
(4) 0x8afc23d930072c286c31a22d6ec5cb9330acd51e
(5) 0x21deb9442d2ac8aefdeaf4521e568a98de3ebb6f
(6) 0x39c9c3fffaff694388354aa40d22236ff102cb01
(7) 0x6927e56ae99f8a9531eaa5769486f0d9c67f1d07
(8) 0x65ad95852c58d7a9ab6177a55aa50f4c98507a83
(9) 0xb963574b692ace8f3f392531ba46788258d19eb6

Private Keys
==================
(0) fb1e07512bfa729237496733dce0ba217356aaa5c14aecf3cecc317042bc77cc
(1) 1b504d05041f1513c14dda6cfcced3b28ae5a47e33a75ce84a5d724adef69f6a
(2) e5756fb44810101d141443a4f20d21dbb7ddfb79157a447721a3fc8a118934bc
(3) bf811c983a80f53ec805bb956720946672a45e6739fe9d34f8099855f3658f17
(4) 681a0a2d42087966db7ca600f92c9b375f87b2e6dfae53e9358dbf54f3e26fc8
(5) b104ed383582580eae090a6d883307245d67d338db9e988312c28a30c61b543a
(6) f74738475aef7b0340f902ea85c0900831b1e1b337bc0f0891e56540eed26491
(7) 96dfa361e52f3f45b24a058846ea6df844f8a89842ef83855309bb0c7827913f
(8) 9cb8adf3b2e5026582b20f0c65aae2c2c4f6adb3e406cd3a52df93050a5b12fe
(9) 4b152799a199aa7200432698d14aa80f970232ee0c97809e45b87880814dad65

HD Wallet
==================
Mnemonic:      drama aspect juice culture foot federal frequent pizza hawk giggle tenant happy
Base HD Path:  m/44'/60'/0'/0/{account_index}

Listening on localhost:8545
```
