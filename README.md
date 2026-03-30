
#  Vending Machine (Verilog - FSM Based)

## 📌 Overview

This project implements a **Vending Machine using Verilog HDL** based on **Finite State Machine (FSM)** design.
It simulates the behavior of a real vending machine by accepting user input, processing payment, and dispensing products.

---

## ⚙️ Features

* Item selection support
* Coin insertion handling
* Balance calculation
* Product dispensing
* Change return mechanism
* FSM-based control logic

---

## 🧠 Working Principle

The vending machine operates using a **Finite State Machine**, where each state represents a stage such as:

* Idle state
* Money insertion
* Item selection
* Product dispensing
* Change return

Transitions between states occur based on inputs like coin value and selected item.

---

## 🏗️ Module Description

* **Inputs:**

  * `clk` → Clock signal
  * `reset` → Reset system
  * `coin` → Inserted money
  * `select` → Item selection

* **Outputs:**

  * `dispense` → Product output
  * `change` → Remaining balance

---

## 🧪 Testbench

The testbench verifies:

* Correct state transitions
* Proper product dispensing
* Accurate change return
* Edge cases (insufficient balance, reset)

---

## 📂 Project Structure


📁 Vending-Machine
 ┣ 📄 vending_machine.v
 ┣ 📄 vending_tb.v
 ┣ 📄 README.md
```

---


## 💡 **Concepts Used**

* Finite State Machine (FSM)
* Sequential logic design
* State transitions
* Verilog HDL modeling

---

## 🚀 **Future Improvements**

* Multiple product support
* Different pricing system
* Display interface
* Card/UPI payment integration

---

## ✨ Author

**Keerthi**

