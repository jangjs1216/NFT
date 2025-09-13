# Contributing to NFT Date Token Project

Thank you for your interest in contributing to the NFT Date Token project! This guide will help you understand how to effectively report issues, request features, and contribute to the project.

## 📋 How to Report Issues

We use GitHub issue templates to ensure we collect all necessary information for different types of issues. Please choose the appropriate template when creating a new issue:

### 🐛 Bug Reports
Use the **Bug Report** template when you encounter:
- Smart contract functions not working as expected
- Frontend application errors or unexpected behavior
- Build or deployment issues
- Test failures

**Required Information:**
- Clear description of the problem
- Steps to reproduce the issue
- Expected vs actual behavior
- Environment details (Node.js version, network, etc.)
- Error logs or screenshots
- Component affected (smart contract, frontend, etc.)

### ✨ Feature Requests
Use the **Feature Request** template when you want to:
- Suggest new functionality for the smart contracts
- Propose UI/UX improvements
- Request developer experience enhancements
- Suggest performance optimizations

**Required Information:**
- Clear feature summary
- Problem statement (what limitation this addresses)
- Proposed solution
- Alternative solutions considered
- Priority level and expected benefits

### 🔒 Security Vulnerabilities
Use the **Security Vulnerability** template for:
- Smart contract security issues
- Potential exploits or attack vectors
- Security best practice violations
- Dependency vulnerabilities

**⚠️ Important Security Notes:**
- For critical vulnerabilities, consider private disclosure first
- Be responsible when sharing proof-of-concept code
- Include severity assessment and potential impact
- Provide suggested fixes if possible

### ❓ Questions and Support
Use the **Question or Support** template for:
- How-to questions about using the project
- Clarification on smart contract mechanics
- Development setup help
- General project questions

## 🔍 Before Creating an Issue

Please check the following before creating a new issue:

1. **Search existing issues** - Your issue might already be reported
2. **Read the README** - Basic information and setup instructions are there
3. **Check the documentation** - Smart contract comments contain implementation details
4. **Watch the video series** - The [YouTube tutorials](https://www.youtube.com/watch?v=GAFh2Z5VtgM&list=PLuZkwckxno0o7_GZoOBp2gnX5DfakVcxy) explain the project in detail

## 🏗️ Project Structure

Understanding the project structure helps with better issue reporting:

```
NFT/
├── contracts/           # Solidity smart contracts
│   ├── Date.sol        # Main NFT contract for date tokens
│   └── skinNFT.sol     # Additional NFT contract
├── test/               # Test files
│   └── Date.test.js    # Comprehensive test suite
├── app/                # Frontend application
│   ├── client/         # React frontend
│   ├── index.js        # Backend server
│   └── utils.js        # Utility functions
├── migrations/         # Truffle deployment scripts
├── scripts/            # Build and deployment scripts
└── truffle-config.js   # Truffle configuration
```

## 🧪 Development Environment

### Prerequisites
- Node.js (v14+ recommended)
- npm or yarn
- Truffle or Hardhat
- Git

### Setup
```bash
# Clone the repository
git clone https://github.com/jangjs1216/NFT.git
cd NFT

# Install dependencies
npm install

# Run tests
npx truffle test

# Compile contracts
npx truffle compile
```

## 📝 Issue Descriptions Best Practices

### For Bug Reports
- **Be specific**: Instead of "contract doesn't work", say "Date.claim() reverts with 'claiming a date costs 10 finney' even when sending 0.01 ETH"
- **Include context**: Mention the network (mainnet, testnet, local), browser, and versions
- **Provide minimal reproduction**: The simplest case that demonstrates the problem
- **Include transaction hashes**: For blockchain issues, provide transaction details

### For Feature Requests
- **Explain the problem**: What limitation or pain point does this address?
- **Provide use cases**: Real-world scenarios where this feature would be useful
- **Consider alternatives**: What other solutions have you considered?
- **Think about implementation**: Any technical suggestions or constraints?

### For Security Issues
- **Assess severity**: Critical issues should be reported privately first
- **Provide proof responsibly**: Demonstrate the issue without creating exploits
- **Suggest mitigations**: How can the vulnerability be fixed?
- **Include references**: Link to relevant security standards or similar issues

## 🎯 Smart Contract Specific Guidelines

When reporting issues related to the smart contracts:

### Date.sol Contract
- **Token ID calculation**: Issues with `id(year, month, day)` function
- **Date validation**: Problems with date ranges, leap years, or invalid dates
- **Minting process**: Issues with `claim()` function, pricing, or ownership
- **Metadata handling**: Problems with titles, colors, or token URI generation

### Common Areas
- **Gas optimization**: Suggestions for reducing transaction costs
- **Access control**: Issues with ownership or permission management
- **Date arithmetic**: Problems with date calculations or timestamp conversions
- **Edge cases**: Leap years, boundary dates, or unusual inputs

## 🏷️ Issue Labels

Our issue templates automatically apply appropriate labels, but here's what they mean:

- `bug` - Something isn't working correctly
- `enhancement` - New feature or improvement
- `security` - Security-related issues
- `question` - Questions or support requests
- `documentation` - Documentation improvements
- `good first issue` - Good for newcomers
- `help wanted` - Community assistance needed
- `priority: high/medium/low` - Issue priority
- `component: contract/frontend/build` - Affected component

## 🤝 Community Guidelines

- **Be respectful**: Treat all community members with respect
- **Be constructive**: Provide helpful feedback and suggestions
- **Be patient**: Maintainers and contributors volunteer their time
- **Follow up**: Provide additional information when requested
- **Test solutions**: Verify that suggested fixes work in your environment

## 📞 Getting Help

If you need help with creating an issue or contributing:

1. **GitHub Discussions**: Join community discussions
2. **README Documentation**: Check the project README
3. **Video Series**: Watch the explanatory YouTube videos
4. **Existing Issues**: Look for similar problems or questions

## 🙏 Thank You

Your contributions help make the NFT Date Token project better for everyone. Whether you're reporting bugs, suggesting features, or asking questions, your input is valuable to the community.

Remember: The more detailed and specific your issue reports are, the faster and more effectively they can be addressed!