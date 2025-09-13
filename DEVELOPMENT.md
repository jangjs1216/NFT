# Development Setup Guide

This guide will help you set up your development environment for the NFT Date Token project.

## Prerequisites

Before you begin, ensure you have the following installed:

- **Node.js** (v14 or higher) - [Download here](https://nodejs.org/)
- **npm** (comes with Node.js) or **yarn**
- **Git** - [Download here](https://git-scm.com/)

## Quick Start

1. **Clone the repository**
   ```bash
   git clone https://github.com/jangjs1216/NFT.git
   cd NFT
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Compile contracts**
   ```bash
   npx truffle compile
   # Or use the provided script:
   chmod +x scripts/compile-contracts.sh
   ./scripts/compile-contracts.sh
   ```

## Running Tests

The project includes comprehensive tests for the smart contracts. To run them:

### Option 1: Using Truffle Develop (Recommended)
```bash
# Start Truffle's built-in blockchain
npx truffle develop

# In the Truffle console, run:
test

# To exit:
.exit
```

### Option 2: Using Ganache CLI
```bash
# Install Ganache CLI globally
npm install -g ganache-cli

# Start Ganache in one terminal
ganache-cli

# In another terminal, run tests
npx truffle test
```

### Option 3: Using Ganache GUI
1. Download and install [Ganache](https://www.trufflesuite.com/ganache)
2. Start a new workspace with the following settings:
   - Server: HTTP://127.0.0.1:8545
   - Network ID: Any (development network will match)
3. Run tests: `npx truffle test`

## Development Networks

The project is configured for several networks in `truffle-config.js`:

- **Development**: Local blockchain (Ganache/Truffle Develop)
- **Ropsten**: Ethereum testnet (requires ACCOUNT_MNEMONIC and INFURA_TOKEN)
- **Rinkeby**: Ethereum testnet (requires ACCOUNT_MNEMONIC and INFURA_TOKEN)
- **Mainnet**: Ethereum mainnet (for production deployment)

### Environment Variables

For testnet and mainnet deployment, create a `.env` file in the root directory:

```env
ACCOUNT_MNEMONIC="your twelve word mnemonic phrase here"
INFURA_TOKEN="your_infura_project_id"
COINMARKET_API_KEY="your_coinmarketcap_api_key" # Optional for gas reporting
```

**⚠️ Security Warning**: Never commit your `.env` file or expose your mnemonic phrase!

## Frontend Development

The project includes a React frontend in the `app/client` directory:

```bash
# Navigate to the client directory
cd app/client

# Install client dependencies
npm install

# Start the development server
npm start
```

The frontend will be available at `http://localhost:3000`.

## Backend Server

The project includes an Express server for backend functionality:

```bash
# In the app directory
cd app

# Install dependencies (if not already done)
npm install

# Start the server
node index.js
```

## Project Structure

```
NFT/
├── .github/                 # GitHub templates and workflows
│   ├── ISSUE_TEMPLATE/     # Issue templates for bugs, features, etc.
│   └── CONTRIBUTING.md     # Contributing guidelines
├── contracts/              # Solidity smart contracts
│   ├── Date.sol           # Main NFT contract
│   └── skinNFT.sol        # Additional NFT functionality
├── test/                  # Test files
│   └── Date.test.js       # Comprehensive contract tests
├── migrations/            # Truffle deployment scripts
├── app/                   # Frontend and backend application
│   ├── client/           # React frontend
│   ├── index.js          # Express server
│   └── utils.js          # Utility functions
├── scripts/              # Build and deployment scripts
├── abis/                 # Compiled contract ABIs (generated)
├── truffle-config.js     # Truffle configuration
└── package.json          # Node.js dependencies
```

## Common Issues and Solutions

### 1. "Cannot find module '@truffle/hdwallet-provider'"
**Solution**: Run `npm install` to install all dependencies.

### 2. "CONNECTION ERROR: Couldn't connect to node"
**Solution**: Make sure you have a blockchain running (Ganache, Truffle Develop, etc.) before running tests or deploying.

### 3. "Error: Returned values aren't valid"
**Solution**: Ensure your contracts are compiled with `npx truffle compile` before running tests.

### 4. Gas estimation errors
**Solution**: Check that your local blockchain has sufficient ETH in the test accounts.

## Useful Commands

```bash
# Compile contracts
npx truffle compile

# Run tests
npx truffle test

# Deploy to development network
npx truffle migrate --network development

# Deploy to testnet (requires .env setup)
npx truffle migrate --network ropsten

# Open Truffle console
npx truffle console

# Check contract sizes
npx truffle run contract-size

# Generate test coverage (if solidity-coverage is installed)
npx truffle run coverage
```

## Smart Contract Development Tips

1. **Test-Driven Development**: Write tests before implementing new features
2. **Gas Optimization**: Use tools like `eth-gas-reporter` to monitor gas usage
3. **Security**: Follow [OpenZeppelin security practices](https://docs.openzeppelin.com/learn/)
4. **Documentation**: Comment your code thoroughly, especially complex functions

## Getting Help

If you encounter issues during setup:

1. **Check existing issues**: Look for similar setup problems in [GitHub Issues](https://github.com/jangjs1216/NFT/issues)
2. **Create an issue**: Use our [Question/Support template](.github/ISSUE_TEMPLATE/question_support.yml)
3. **Read documentation**: Check the main [README](../README.md) and [Contributing Guide](.github/CONTRIBUTING.md)
4. **Watch tutorials**: View the [YouTube video series](https://www.youtube.com/watch?v=GAFh2Z5VtgM&list=PLuZkwckxno0o7_GZoOBp2gnX5DfakVcxy)

## Next Steps

Once your environment is set up:

1. Explore the smart contracts in the `contracts/` directory
2. Run the test suite to understand the expected behavior
3. Check out the frontend application in `app/client/`
4. Read through the [Contributing Guidelines](.github/CONTRIBUTING.md)
5. Consider contributing improvements or reporting issues!

Happy coding! 🚀