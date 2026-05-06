# RPG-Templates
Beginnerfriendly RPGLE Templates
# IBM i RPG – Simple Customer Display (SQL + DSPF + RPGLE)

##  Overview

This project demonstrates a minimal end-to-end example on IBM i using:

* SQL (DB2) for data storage
* Display File (DSPF) for UI
* RPGLE (free format) as application logic

The program reads customer data from a database table and displays it on a simple screen.

---

##  Project Structure

### 1. SQL Table (`CUSTOMERS`)

Defines the database structure and test data.

**Key aspects:**

* Auto-generated primary key (`IDENTITY`)
* Stores customer name and account balance
* Uses DB2 on IBM i

Example fields:

* `CUSTOMER_ID`
* `NAME`
* `BALANCE`

---

### 2. Display File (`CUSTOMERDSPF`)

Defines the user interface shown in the terminal.

**Key aspects:**

* Fixed screen layout (24x80)
* Output-only fields
* Function key support (F3 = Exit)
* Field positioning using row/column coordinates

Displayed fields:

* Customer ID
* Name
* Balance

---

### 3. RPGLE Program (`CUSTOMERRPG`)

Connects database and UI.

**Key aspects:**

* Uses embedded SQL (`EXEC SQL`)
* Reads data via cursor
* Maps database fields to display fields
* Handles user interaction (Exit via F3)

---

##  Data Flow

1. SQL table stores customer data
2. RPG program reads data using a cursor
3. Data is assigned to display fields
4. Display file renders the output

---

##  Important Notes

* This example uses **sequential display**, not a list (no subfile yet)
* Only one record is shown at a time
* Cursor handling is essential in RPG with SQL
* Display files require precise field positioning
* Indicators (e.g. `*IN03`) are used for function key handling

---

##  Purpose

This project is intended for:

* Beginners learning IBM i development
* Understanding how SQL, DSPF, and RPGLE interact
* Building a foundation before working with Subfiles

---

##  Next Steps

Possible extensions:

* Subfile implementation (list view)
* Input fields and data editing
* Paging and navigation
* Error handling (SQLSTATE)

---
