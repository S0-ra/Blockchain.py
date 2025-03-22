# Simple Blockchain Implementation in Python

This is a simple implementation of a blockchain in Python, created to help learn and understand the fundamentals of how blockchain technology works. The project covers the basic concepts of a blockchain, including blocks, hash functions, proof-of-work, consensus algorithms, and chain integrity.

## Features

- **Blockchain Structure**: The blockchain consists of a series of blocks, each containing data, a timestamp, the hash of the previous block, and its own hash.
- **Proof-of-Work (PoW)**: Implements a simple proof-of-work algorithm to simulate mining and add security to the blockchain.
- **Hashing**: Uses SHA-256 to hash the block data and ensure data integrity.
- **Block Validation**: Includes basic logic for validating the integrity of the blockchain by checking hashes and proof-of-work.
- **Consensus Algorithm**: Ensures that all nodes on the blockchain network agree on the current state of the blockchain. This implementation uses Proof-of-Work as the consensus algorithm.

## Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/S0-ra/Blockchain.py.git
   cd Blockchain.py
   ```

2. Run the program:
   ```
   python blockchain.py
   ```
   This creates a simple blockchain and runs a Flask API on port 5000 by default. To run the blockchain node on a different port use(e.g., 5001), use the --port argument.

## Code Explanation

### Blockchain Class:

This class defines the structure of the blockchain and contains methods to manage the chain, transactions, and nodes.

- **\_\_init\_\_**: Initializes the blockchain with a gensis block.

- **register_node**: Registers a new node to the network.

- **valid_chain**: Validates the integrity of the blockchain.

- **resolve_conflicts**: Resolves the conflicts in the network by finding the longest valid chain.

- **new_block**: Adds a new block to the transaction.

- **new_transaction**: Adds a new transaction to the list of transactions.

- **hash**: Returns the hash of a block.

- **valid_proof**: Checks whether a proof of work is valid.

- **proof_of_work**: Performs the mining process(finding a valid proof).

### Flask API Endpoints

- **/mine**: Mines a new block and adds it to the blockchain.

- **transcations/new**: Adds a new transaction to the list.

- **/chain**: Returns the current blockchain

- **/nodes/register**: Registers a new node to the network.

- **/nodes/resolve**: Resolves conflicts between nodes by finding the longest valid chain.

## Testing the Blockchain

1. Start the node:

   ```
   python blockchain.py
   ```

   Optionally if you want to start a second node on a different node.

   ```
   python blockchain.py --port 5001
   ```

   This starts a node on port 5001

2. If you're using multiple nodes you can register one node on another with the script written in the `register.bat` file:

   ```
   register.bat 5001 5000 // 5001 ,5000 refers to the port numbers
   ```

   This registers node `192.0.0.1:5001` on the node `192.0.0.1:5000`.

   If you're using powershell, add `.\` infront of `register.bat`

   ```
   .\register.bat 5001 5000
   ```

3. To mine a new block, use the **/mine** endpoint:

   ```
   curl http://127.0.0.1:5000/mine
   ```

4. To add a transaction, use the **/transaction** endpoint:

   ```
   curl -X POST -H "Content-Type: application/json" -d "{\"sender\": \"sender_address\", \"recipient\": \"recipient_address\", \"amount\": 100}" http://127.0.0.1:5000/transactions/new

   ```

5. To view the current blockchain, use the **/chain** endpoint:

   ```
   curl http://127.0.0.1:5000/chain
   ```

6. To resolve the conflicts between the node use the **/nodes/resolve** endpoint:

   ```
   curl http://127.0.0.1:5000/nodes/resolve
   ```

## Conclusion

This project provides a simple implementation of a blockchain with basic functionalities like mining, transactions, and consensus. You can use this as a foundation for more advanced blockchain applications or to explore how blockchain technology works in practice.
