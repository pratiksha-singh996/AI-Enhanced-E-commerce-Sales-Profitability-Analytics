## Category Performance Analysis

| Category | Sales | Profit | Quantity | Profit Margin |
|---|---:|---:|---:|---:|
| Clothing | ₹139,054 | ₹11,163 | 3,516 | 8.03% |
| Electronics | ₹165,267 | ₹10,494 | 1,154 | 6.35% |
| Furniture | ₹127,181 | ₹2,298 | 945 | 1.81% |
| Total | ₹431,502 | ₹23,955 | 5,615 | 5.55% |

### Key Findings

- Electronics generated the highest sales at ₹165,267.
- Clothing generated the highest profit at ₹11,163.
- Clothing also achieved the highest profit margin at approximately 8.03%.
- Furniture had the lowest profit margin at approximately 1.81%.
- Furniture requires further investigation to understand the factors contributing to its lower profitability.

### Business Question

Why is Furniture generating significant sales but achieving a substantially lower profit margin compared with Clothing and Electronics?


## Sub-Category Performance Analysis

### Key Findings

1. Printers generated the highest sales at ₹58,252 and the highest profit at ₹5,964.

2. Tables is the most significant loss-making sub-category, generating ₹22,614 in sales but a loss of ₹4,011, resulting in a negative profit margin of approximately -17.73%.

3. Electronic Games generated ₹39,168 in sales but recorded a loss of ₹1,236, resulting in a negative profit margin of approximately -3.16%.

4. T-shirt achieved the highest profit margin at approximately 20.32%, despite relatively lower sales of ₹7,382.

5. Saree generated relatively high sales of ₹53,511 and 782 units but generated only ₹352 profit, resulting in a very low profit margin of approximately 0.66%.

### Business Questions

- Why are Tables generating significant losses?
- Why are Electronic Games loss-making despite generating ₹39,168 in sales?
- Why does Saree have high sales volume but very low profitability?
- What factors are contributing to the strong profitability of T-shirt and Accessories?

## Data Integration Validation

The `Order_Details_cleaned` dataset was merged with `List_of_Orders_cleaned` using `Order ID` as the common key.

### Validation

- Order Details records before merge: 1,500
- Records after merge: 1,500
- No additional rows were introduced during the merge.

The merged dataset was therefore considered suitable for further sales and regional analysis.

## Regional Performance Analysis

### Key Findings

1. Madhya Pradesh generated the highest sales among the analyzed states at ₹105,140, with a profit of ₹5,551.

2. Maharashtra generated the highest profit at ₹6,176, with sales of ₹95,348.

3. Uttar Pradesh generated ₹22,359 in sales and ₹3,237 in profit, resulting in a relatively strong profit margin of approximately 14.48%.

4. Tamil Nadu is a significant underperforming region, generating ₹6,087 in sales but recording a loss of ₹2,216.

5. Punjab and Andhra Pradesh also recorded negative profitability of ₹609 and ₹496 respectively.

### Business Questions

- Why is Tamil Nadu generating a significant loss relative to its sales?
- Which products or sub-categories are responsible for losses in Tamil Nadu?
- Why does Uttar Pradesh achieve a relatively high profit margin?
- Which categories contribute most to the performance of Madhya Pradesh and Maharashtra?
