This repository contains a comprehensive collection of SQL scripts developed for a University Database Systems course. The tasks cover the entire lifecycle of database management, from basic querying to advanced automation using triggers and views.

---

## 📂 Project Structure

The tasks are organized into 12 distinct exercises (`upr1` through `upr12`), categorized by their technical focus:

### 1. Data Retrieval & Filtering (`upr1` - `upr4`)

Focuses on the fundamentals of SQL using three primary datasets: **Movies**, **PC Hardware**, and **Naval Ships**.

* **Simple Queries**: Filtering data with `WHERE`, pattern matching using `LIKE`, and basic arithmetic in `SELECT`.
* **Joins**: Combining multiple tables using `INNER JOIN`, `LEFT/RIGHT JOIN`, and self-joins.
* **Set Operations**: Combining results using `UNION`, `INTERSECT`, and `EXCEPT`.
* **Subqueries**: Implementing complex logic using `IN`, `EXISTS`, `ANY`, and `ALL`.

### 2. Aggregations & Grouping (`upr5` - `upr6`)

Advanced data analysis and conditional logic.

* **Aggregate Functions**: `SUM`, `AVG`, `COUNT`, `MIN`, and `MAX`.
* **Grouping**: Summarizing data with `GROUP BY` and filtering groups with `HAVING`.
* **Conditional Logic**: Using `CASE` statements to categorize data (e.g., classifying laptop prices as 'LOW', 'AVERAGE', or 'HIGH').

### 3. Data Modification & Schema Design (`upr8` - `upr10`)

Handling the structure and content of the database.

* **DML**: `INSERT`, `UPDATE`, and `DELETE` operations, including subquery-driven updates.
* **DDL**: Creating and altering tables, defining `DEFAULT` values, and managing primary/foreign keys.
* **Constraints**: Implementing data integrity using `CHECK`, `UNIQUE`, and `NOT NULL`.

### 4. Database Objects & Automation (`upr11` - `upr12`)

Creating reusable components and automating database reactions.

* **Views**: Creating virtual tables for simplified access and security using `WITH CHECK OPTION`.
* **Triggers**:
* **AFTER Triggers**: Automatically updating related tables (e.g., inserting a ship when a class is added).
* **INSTEAD OF Triggers**: Handling complex inserts into views or validating data (e.g., blocking future dates).
* **Data Integrity**: Using `RAISERROR` and `ROLLBACK` to enforce business rules.



---

## 🛠️ Datasets Used

* **Movies**: Studios, Movies, Movie Stars, and Executives.
* **PC**: Manufacturers, Products (PC, Laptop, Printer), and technical specifications.
* **Ships**: Naval Classes, Ships, Battles, and Outcomes.

---

## 🚀 Usage

### Requirements

* A relational database management system (the scripts are optimized for **MS SQL Server**).

### Execution

To set up a specific task, open the corresponding `.sql` file and execute the script in your SQL editor:

```sql
-- Example: Running an aggregation task from upr5
SELECT maker, AVG(screen) 
FROM product JOIN laptop ON product.model = laptop.model 
GROUP BY maker;

```

### Transaction Management

Several scripts include `BEGIN TRANSACTION`, `ROLLBACK`, and `COMMIT` blocks. This allows you to test destructive operations (like `DELETE` or `DROP`) without permanently altering your laboratory data.

---
