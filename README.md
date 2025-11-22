# 🏛️ Cyber Law Registry - Truffle & Ganache Deployment

A decentralized blockchain-based registry ensuring transparent and tamper-proof documentation of cyber law records. This project demonstrates moving a Solidity smart contract from Remix to the industry-standard **Truffle Suite** development environment.

## 📜 Problem Statement

The goal was to demonstrate proficiency in a professional blockchain development workflow by migrating the **Cyber Law Registry** contract from a test-only environment (Remix) to a local, structured environment using:
1.  **Truffle:** For project initialization, structured development, and automated contract compilation.
2.  **Ganache:** To provide a reliable, local, and private Ethereum testing blockchain.
3.  **Local Frontend Integration:** Ensuring the Web3 frontend interacts correctly with the locally deployed contract.

## 💡 Solution Overview

The **Cyber Law Registry** smart contract was successfully compiled and deployed using Truffle's migration system onto the **Ganache Local Blockchain**. The frontend was updated to connect to this local network, ensuring:
* **Immutability:** Records are permanently stored on the local Ganache chain.
* **Decentralization:** Testing occurs in a structured local environment mimicking mainnet deployment.
* **Integration:** Successful connection between the frontend, MetaMask, and the local Ganache instance, enabled by Web3 technologies like Ethers.js.

### 🌐 Deployment Details

| Component | Status | Details |
| :--- | :--- | :--- |
| **Blockchain Network** | Local | **Ganache Local** (Network ID: 5777 / Chain ID: 1337) |
| **Deployment Tool** | Used | **Truffle Suite** (Truffle Migration) |
| **Frontend Connection** | Local | `http://127.0.0.1:8080` via `http-server` |
| **Contract Owner** | Account 0 | `0x32FE85c35b58A3595D704e5215C2D3422bEa63C4` |

### 📬 Current Deployed Contract Address

**LATEST Contract Address (from `truffle migrate --reset`):**
* Before: `0xc240d401B070BDF0E402580559B7c36Ec6eBF256`
* After: `0x85DaC2612353F8F0F26997614A2CB06896B5b20D`

---

## 🛠️ Tech Stack & Prerequisites

* **Smart Contract Language:** Solidity `^0.8.0`
* **Framework:** Truffle Suite (v5.x or later)
* **Local Blockchain:** Ganache GUI
* **Frontend:** HTML, CSS, JavaScript (Ethers.js)
* **Wallet:** MetaMask (configured for Ganache Local)

---

## ⚙️ Steps to Reproduce & Deploy

Follow these steps to set up and deploy the project locally:

### 1️⃣ Installation & Initialization

1.  **Install Truffle & Ganache:**
    ```bash
    npm install -g truffle ganache
    ```
2.  **Initialize Project:**
    ```bash
    mkdir CyberLawRegistry-Truffle
    cd CyberLawRegistry-Truffle
    truffle init
    ```
3.  **Contract Setup:** Copy `CyberLawRegistry.sol` to the `contracts/` folder.
4.  **Migration Script:** Ensure `migrations/2_deploy_contract.js` is set up to deploy the contract.
5.  **Configure Truffle:** Verify `truffle-config.js` is set for the `development` network (host: `127.0.0.1`, port: `7545`, network\_id: `*`).

### 2️⃣ Deployment

1.  **Start Ganache:** Ensure the Ganache GUI is running and on port `7545`.
2.  **Compile:**
    ```bash
    truffle compile
    ```
3.  **Deploy:** (Use the `--reset` flag to force deployment)
    ```bash
    truffle migrate --reset --network development
    ```
    * **Note:** The contract address above was generated from this step.

### 3️⃣ Frontend Testing

1.  **Update Frontend:** Ensure the contract address (`0xc240d401B070BDF0E402580559B7c36Ec6eBF256`) and network ID checks (`1337` and `5777`) are updated in `src/index.html`.
2.  **Run Server:**
    ```bash
    npx http-server src -p 8080
    ```
3.  **Interact:** Access `http://127.0.0.1:8080`, connect MetaMask (on **Ganache Local** network), and test the **Add Law** and **Refresh Laws** functionality.

---

## 📂 Folder Structure

The final ZIP submission follows this required structure:
```
CyberLawRegistry-Truffle
├── contracts/
│ └── SmartContract.sol
├── migrations/
│ └── 2_deploy_contract.js
├── src/ or frontend/
│ ├── index.html
│ ├── script.js
│ └── style.css (optional)
├── truffle-config.js
├── README.md
├── LICENSE
└── screenshots/ (showing compile, migrate, and UI interaction)
```

---

## 📷 Project Preview
<img width="965" height="448" alt="image" src="https://github.com/user-attachments/assets/7c800cce-63a0-4561-831d-971858add169" />

---

## 👩‍💻 Author

Developed by: **Muskan Ahmed**

---

## 🧩 License

This project is licensed under the MIT License.
