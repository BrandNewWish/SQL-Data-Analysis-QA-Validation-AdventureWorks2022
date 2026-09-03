# QA Findings & Results

This document summarizes the results of the SQL-based QA validation checks performed against the AdventureWorks2022 sample database.

## QA-01 – Products with missing Color

### Objective

Identify products where the `Color` field is NULL.

### Result

The query returned **248 products** with a missing Color value.

### Assessment

**Data-quality observation.** A missing Color value is not automatically a defect because some products may legitimately not require a color attribute.

### QA Perspective

The business rules should determine whether Color is mandatory for a specific product type before classifying these records as defects.

---

## QA-02 – Products with missing Size

### Objective

Identify products where the `Size` field is NULL.

### Result

The query returned **293 products** with a missing Size value.

### Assessment

**Data-quality observation.** A missing Size value may be acceptable for products where size is not applicable.

### QA Perspective

The expected behavior should be verified against the relevant business rules before treating missing values as defects.

---

## QA-03 – Customers without an associated Person record

### Objective

Verify that customers with a `PersonID` have a corresponding record in `Person.Person`.

### Result

The query returned **0 records**.

### Assessment

**PASS** – No invalid customer-to-person references were identified.

---

## QA-04 – Order details referencing nonexistent products

### Objective

Verify that every `SalesOrderDetail.ProductID` corresponds to an existing product.

### Result

The query returned **0 records**.

### Assessment

**PASS** – No orphaned product references were identified.

---

## QA-05 – Order details referencing nonexistent orders

### Objective

Verify that every `SalesOrderDetail.SalesOrderID` corresponds to an existing sales order.

### Result

The query returned **0 records**.

### Assessment

**PASS** – No invalid order references were identified.

---

## QA-06 – Orders referencing nonexistent customers

### Objective

Verify that every `SalesOrderHeader.CustomerID` corresponds to an existing customer.

### Result

The query returned **0 records**.

### Assessment

**PASS** – No invalid customer references were identified.

---

## QA-07 – Products with negative ListPrice

### Objective

Identify products with a negative `ListPrice`.

### Result

The query returned **0 records**.

### Assessment

**PASS** – No products with negative ListPrice values were identified.

---

## QA-08 – Invalid order quantities

### Objective

Identify order-detail records where `OrderQty` is zero or negative.

### Result

The query returned **0 records**.

### Assessment

**PASS** – No order details with invalid quantity values were identified.

---

## QA-09 – Duplicate ProductNumber values

### Objective

Identify duplicate `ProductNumber` values in the product table.

### Result

The query returned **0 records**.

### Assessment

**PASS** – No duplicate ProductNumber values were identified.

---

## QA-10 – Sales orders with missing OrderDate

### Objective

Identify sales orders where `OrderDate` is NULL.

### Result

The query returned **0 records**.

### Assessment

**PASS** – No sales orders with missing OrderDate values were identified.

---

## Overall QA Summary

The validation checks identified two areas requiring further business-rule review: missing Color values and missing Size values.

The referential-integrity and business-rule checks performed in this project did not identify invalid references, negative product prices, invalid order quantities, duplicate ProductNumber values, or missing sales order dates.

### Overall QA Assessment

The results demonstrate how SQL can be used to investigate data quality, validate relationships between database tables, and identify records requiring further investigation.

A SQL query returning unexpected or missing data does not automatically indicate a software defect. The result should be evaluated against documented business rules and expected system behavior before assigning a defect classification.

