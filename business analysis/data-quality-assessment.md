# Data Quality Assessment

## 1. Objective

The purpose of this assessment is to identify data-quality issues in the raw datasets before performing analysis and dashboard development.

The assessment covers:

- Missing values
- Duplicate records
- Data type consistency
- Data format consistency
- Data validity
- Relationship consistency between datasets

---

# 2. List of Orders

## 2.1 Missing Value Check

| Column | Missing Values | Status |
|---|---:|---|
| Order ID | 0 | Pass |
| Order Date | 0 | Pass |
| CustomerName | 0 | Pass |
| State | 0 | Pass |
| City | 0 | Pass |

### Finding

No missing values were identified in the `List of Orders` dataset.

---

## 2.2 Duplicate Order ID Check

The `Order ID` column was checked using a COUNTIF-based duplicate check.

### Finding

No duplicate Order IDs were identified.

Each Order ID occurred only once in the `List of Orders` dataset.

**Status:** Pass

---

## 2.3 Order Date Data Type Check

The `Order Date` column was checked using Excel's `ISNUMBER()` function to determine whether dates were stored as valid date values or as text.

| Date Type | Count | Status |
|---|---:|---|
| Proper Date | 193 | Pass |
| Text Date | 307 | Requires Cleaning |
| Total Records Checked | 500 | |

### Finding

307 records were identified as text-formatted dates, while only 193 records were recognized as proper Excel dates.

### Impact

Inconsistent date formats may affect:

- Date filtering
- Monthly sales analysis
- Sales trend analysis
- Power BI date-based visualizations
- Actual sales vs target comparison

### Recommended Action

Standardize the `Order Date` column to a consistent date datatype in the cleaned dataset.

---

# 3. Data Cleaning Principle

The raw datasets will not be modified directly.

Original data will be preserved in:

`data/raw/`

Cleaned versions will be stored in:

`data/cleaned/`

This ensures that the original source data remains available for reference and validation.
