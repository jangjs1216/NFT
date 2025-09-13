# Coding an NFT crypto collectible in 3 days

Hello. Thank you for being here. This repository belongs to the youtube video series [NTF with no clue](https://www.youtube.com/watch?v=GAFh2Z5VtgM&list=PLuZkwckxno0o7_GZoOBp2gnX5DfakVcxy).
If you haven't seen it, please consider watching the videos, to get a better understanding of this code.


## Content

This repository includes all the code written during the 3-day challenge. The project consists of:

### 📁 Project Structure
- **`contracts/`** - Solidity smart contracts for NFT date tokens
  - `Date.sol` - Main contract for minting and managing date tokens
  - `skinNFT.sol` - Additional NFT contract functionality
- **`test/`** - Comprehensive test suite for smart contracts
- **`app/`** - Frontend application and backend server
  - `client/` - React-based user interface
  - `index.js` - Express server backend
  - `utils.js` - Utility functions for date handling
- **`migrations/`** - Truffle deployment scripts
- **`scripts/`** - Build and deployment automation

### 🎯 Key Features
- **Date Tokenization**: Mint NFTs representing specific calendar dates
- **Unique Metadata**: Each date token has customizable titles and rarity-based colors
- **Smart Pricing**: Fixed pricing model (10 finney per date)
- **Historical Validation**: Prevents minting future dates
- **Comprehensive Testing**: Full test coverage for smart contract functionality

### 🔗 Getting Help
- **📖 Documentation**: Check this README and the [contributing guide](.github/CONTRIBUTING.md)
- **💬 Issues**: Use our [issue templates](.github/ISSUE_TEMPLATE/) for support
- **🎥 Video Series**: Watch the [NFT with no clue](https://www.youtube.com/watch?v=GAFh2Z5VtgM&list=PLuZkwckxno0o7_GZoOBp2gnX5DfakVcxy) tutorials

## Contribution

This NFT Date Token project is open for contributions! Whether you want to report bugs, suggest features, ask questions, or contribute code, we welcome your involvement.

### 🚀 Getting Started
- **📋 Report Issues**: Use our [issue templates](.github/ISSUE_TEMPLATE/) for bugs, features, security issues, or questions
- **🤝 Contributing Guide**: Read our [contributing guidelines](.github/CONTRIBUTING.md) for detailed information
- **⚙️ Development Setup**: See the [development guide](DEVELOPMENT.md) for environment setup and testing
- **🎥 Video Tutorials**: Watch the explanatory [YouTube series](https://www.youtube.com/watch?v=GAFh2Z5VtgM&list=PLuZkwckxno0o7_GZoOBp2gnX5DfakVcxy)

### 📋 Issue Templates
We provide structured templates to help you provide all necessary details:
- **[🐛 Bug Report](.github/ISSUE_TEMPLATE/bug_report.yml)**: Report issues with smart contracts, frontend, or build process
- **[✨ Feature Request](.github/ISSUE_TEMPLATE/feature_request.yml)**: Suggest new functionality or improvements  
- **[🔒 Security Vulnerability](.github/ISSUE_TEMPLATE/security_vulnerability.yml)**: Report security issues responsibly
- **[❓ Question/Support](.github/ISSUE_TEMPLATE/question_support.yml)**: Get help with usage or development

Please feel free to fork this repository. Any pull request or comment is welcome!

Have a great day Coders!

## Quick Setup

```bash
# Clone and setup
git clone https://github.com/jangjs1216/NFT.git
cd NFT
npm install

# Compile contracts
npx truffle compile

# Run tests (requires local blockchain)
npx truffle develop
# In truffle console: test
```

For detailed setup instructions, see [DEVELOPMENT.md](DEVELOPMENT.md).

## Changelog

20-09-2021: Fix date string rendering on SVG.
06-08-2021: Upgraded the codebase to work with solc version 0.8.0. Please check commit https://github.com/kiecodes/nft/commit/988f64bf5d2c127bbb7e76bdf4f548337673dffd for details.
