# 🧠 Practise Smart Contract – Todo List (Solidity)

This smart contract demonstrates how to build a basic **Todo List** on the Ethereum blockchain using Solidity. It covers essential concepts like `struct`, `array`, function creation, and blockchain interaction.

---

## 📜 License Declaration

```solidity
// SPDX-License-Identifier: MIT
```
- Specifies the license under which this smart contract is released.
- **MIT** license allows others to use, modify, and distribute the contract freely.

---

## ⚙️ Solidity Version

```solidity
pragma solidity ^0.8.10;
```
- Sets the required version of Solidity to compile the contract.
- This ensures the contract runs on Solidity version **0.8.10 or higher**.

---

## 🏗️ Contract Declaration

```solidity
contract Practise {
```
- Defines a contract named `Practise`.
- A contract in Solidity is similar to a class in object-oriented programming.

---

## 📦 Struct Definition

```solidity
struct Todo {
   string work;
   bool status;
}
```
- `struct` is a custom data type used to store related data.
- `Todo` represents a single task in the todo list.
  - `work`: A string that stores the task description.
  - `status`: A boolean indicating whether the task is completed (`true`) or not (`false`).

---

## 🧰 Array of Todos

```solidity
Todo[] todo;
```
- Declares a **dynamic array** named `todo` to store multiple tasks.
- The array grows automatically as new tasks are added.

---

## ➕ Function to Add Work

```solidity
function addWork(string memory _work, bool _status) public {
   todo.push(Todo({work: _work, status: _status}));
}
```
- This function adds a new task to the todo list.
  - `string memory _work`: Task description (text).
  - `bool _status`: Completion status (`true` = done, `false` = not done`).
- `todo.push(...)` adds a new task to the array.

---

## 🔍 Function to View Work

```solidity
function getWork(uint _index) public view returns (string memory) {
   return todo[_index].work;
}
```
- This function returns the task description for a specific index.
  - `uint _index`: Index of the task to retrieve.
- `view` means it does not modify blockchain state.
- Returns only the `work` (task description), not the status.

---

## 🧾 Full Code Summary

```solidity
// SPDX-License-Identifier:MIT
pragma solidity ^0.8.10;

contract Practise {
   struct Todo {
      string work;
      bool status;
   }

   Todo[] todo;

   function addWork(string memory _work, bool _status) public {
      todo.push(Todo({work: _work, status: _status}));
   }

   function getWork(uint _index) public view returns (string memory) {
      return todo[_index].work;
   }
}
```

---

## ✅ Features

+ Add new tasks with a name and status (done or not done)
+ View task description by index
+ Uses dynamic arrays and structs
+ Easy-to-understand functions

---

## 🔮 Future Enhancements

+ Add function to:
  - Get full task (including status)
  - Delete a task
  - Toggle status between done and not done
  - List all tasks

---

## 🛠 Built With

+ **Solidity** – Smart contract programming language
+ **Remix IDE** or local environment like **Hardhat**
+ **MetaMask** – For testing with Ethereum accounts (optional)

---

## 🙌 Author

**Kabir Dharshaan**  
🎓 Squad 81 – Kalasalingam University  
📧 Email: dharshaankabir@gmail.com 

---

## 🧠 Notes for Beginners

+ `memory` keyword is used for temporary storage during function execution.
+ `public` means the function can be called from outside the contract.
+ `view` functions do not cost gas unless called within another function.

---

Feel free to clone, modify, and use this contract in your own learning or projects. ⭐️