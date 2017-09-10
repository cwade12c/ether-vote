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

# Usage (Node)
***To retrieve the number of votes for a given candidate:***
```
contractInstance.getTotalVotesForCandidate.call('Holo');
```

***To cast a vote for a particular candidate:***
```
contractInstance.setVoteForCandidate('Kurisu', {from: web3.eth.accounts[1]});
```

# Installation

ether-vote requires [Node.js](https://nodejs.org/) and [bower](https://bower.io/) to run.

**Step 1 -** Install the frontend dependencies:

```
bower install
```

**Step 2 -** Install the node modules:

```
npm install
```

**Step 3 -** Run `testrpc`

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

**Step 4.0 -** Run `node`

**Step 4.1 -** Include web3.js
```
Web3 = require('web3');
web3 = new Web3(new Web3.providers.HttpProvider("http://127.0.0.1:8545"));
```

**Step 4.2 -** Set the output of *EtherVote.sol* to a variable
```
smartContract = fs.readFileSync('EtherVote.sol').toString();
```

**Step 4.3 -** Compile the contract using `solc`
```
solc = require('solc');
compiledCode = solc.compile(smartContract);
```

The output will return a JSON object that contains important information like the Ethereum Contract Application Binary Interface (ABI) and smart contract bytecode. For example:
```
{ contracts: 
   { ':EtherVote': 
      { assembly: [Object],
        bytecode: '6060604052341561000f57600080fd5b6040516103dc3803806103dc833981016040528080518201919050505b806001908051906020019061004292919061004a565b505b506100c2565b82805482825590600052602060002090810192821561008c579160200282015b8281111561008b57825182906000191690559160200191906001019061006a565b5b509050610099919061009d565b5090565b6100bf91905b808211156100bb57600081600............continued............',
        functionHashes: [Object],
        gasEstimates: [Object],
        interface: '[{"constant":true,"inputs":[{"name":"","type":"bytes32"}],"name":"numberOfVotesReceived","outputs":[{"name":"","type":"uint8"}],"payable":false,"stateMutability":"view","type":"function"},............continued............]',
        metadata: '{"compiler":{"version":"0.4.16+commit.d7661dd9"},"language":"Solidity","output":{"abi":[{"constant":true,"inputs":[{"name":"","type":"bytes32"}],"name":"numberOfVotesReceived","outputs":[{"name":"","type":"uint8"}],............continued............}]}',
        opcodes: 'PUSH1 0x60 PUSH1 0x40 MSTORE CALLVALUE ISZERO PUSH2 0xF JUMPI PUSH1 0x0 DUP1 REVERT JUMPDEST PUSH1 0x40 MLOAD PUSH2 0x3DC CODESIZE SUB DUP1 PUSH2 0x3DC DUP4 CODECOPY DUP2 ADD PUSH1 0x40 MSTORE DUP1 DUP1 MLOAD DUP3 ADD SWAP2 SWAP1 POP POP JUMPDEST DUP1 PUSH1 0x1 SWAP1 DUP1 MLOAD SWAP1 PUSH1 0x20 ADD SWAP1 PUSH2 0x42 SWAP3 SWAP2 SWAP1 PUSH2 0x4A JUMP JUMPDEST POP JUMPDEST POP PUSH2 0xC2 JUMP JUMPDEST DUP3 DUP1 SLOAD DUP3 DUP3 SSTORE SWAP1 PUSH1 0x0 MSTORE PUSH1 0x20 ............continued............ ',
        runtimeBytecode: '60606040526000357c0100000000000000000000000000000000000000000000000000000000900463ffffffff1680630d8de22c1461006a5780633898ac29146100ab5780638c1d9f30146100ec57806392d7df4a1461012b578063dcebb25e1461016a575b600080fd5b34156100............continued............',
        srcmap: '2',
        srcmapRuntime: '',
  sourceList: [ '' ],
  sources: { '': { AST: [Object] } } }
```

**Step 5.0 -** Create an ABI definition object by passing in the ABI definition as JSON from the *compiledCode* object that was created in Step 4.3. Then, pass this ABI definition object to the `web3.eth.contract` function in order to create an *EtherVote* object.
```
abiDefinition = JSON.parse(compiledCode.contracts[':EtherVote'].interface);
EtherVoteContract = web3.eth.contract(abiDefinition);
```

**Step 5.1 -** Save the *byteCode* object from the *compiledCode* object to a variable, as we will use this when calling our *EtherVoteContract*'s prototypical `.new()` function
```
byteCode = compiledCode.contracts[':Voting'].bytecode;
```

**Step 5.2 -** Deploy the smart contract to the Ethereum blockchain by invoking `EtherVoteContract.new(...)`, which takes in two parameters:
* The first parameter are the values for the constructor - in this case, our list of candidates to vote for
* The second parameter is an object that contains the following properties:
    | Property | Description |
    | ------ | ------ |
    | data | The compiled bytecode that will be deployed to the Ethereum blockchain |
    | from | The address that will deploy the smart contract |
    | gas | The amount of money that will be offered to miners in order to include the code on the blockchain  |

```
deployedContract = EtherVoteContract.new(['Kurisu', 'Holo', 'Rin', 'Haruhi', 'Mitsuha'], 
                        {
                            data: byteCode, 
                            from: web3.eth.accounts[0], 
                            gas: 4700000
                        }
                    );
```

**Step 5.3 -** Create an instance of the smart contract by invoking the `at` function on the *EtherVoteContract* object, passing in the address property from the *deployedContract* object that was created in Step 5.2
```
contractInstance = EtherVoteContract.at(deployedContract.address);
```

Congratulations, you are now ready to interact with the dapp! (See: Usage above)
