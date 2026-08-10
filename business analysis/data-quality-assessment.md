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

## 2.4 State-City Consistency Check

A State-City relationship check was performed using a PivotTable with State and City as row fields.

### Finding

An inconsistent State-City combination was identified:

| State | City | Issue |
|---|---|---|
| Madhya Pradesh | Delhi | City does not belong to the specified state |

### Impact

Incorrect State-City mapping can lead to inaccurate:

- Regional sales analysis
- State-level performance reporting
- City-level drill-downs
- Geographical visualizations in Power BI

### Recommended Action

The incorrect State-City mapping should be investigated against the original/source data before making any correction.

The raw dataset will remain unchanged. Any confirmed correction will be applied only to the cleaned dataset.




### Cleaning Performed

The `Order Date` column contained a mixture of properly recognized Excel dates and text-formatted dates.

To standardize the date values:

1. The `Order Date` column was selected.
2. Excel's **Text to Columns** feature was used.
3. The **Date** format was selected.
4. The **DMY (Day-Month-Year)** format was applied.
5. The converted values were validated using the `ISNUMBER()` function.

### Validation

After applying the DMY date format, all 500 records were successfully recognized as valid Excel dates.

**Validation Formula:**

`=ISNUMBER(B2)`

**Result:** All records returned `TRUE`.

### Final Status

The `Order Date` column was successfully standardized to a consistent date format in the cleaned dataset.

This ensures that the original source data remains available for reference and validation.
