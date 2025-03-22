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
