# DSA_2040_Practical_Exam_Ambachow_550


Variable-wise Checks & Transformations
Column	Data Type	Checks & Transformations
Description	Object (string)	- Check for missing/null values
- Remove or impute if missing (e.g., "Unknown Product")
- Clean strings (strip spaces, lowercase)
- Optional: Categorize products into categories if possible
Quantity	Integer	- Check for missing/null values
- Remove or flag rows with Quantity <= 0 (negative or zero quantities usually invalid)
- Check for outliers (extremely high values)
- Ensure integer type
InvoiceDate	Object (string)	- Convert to datetime format
- Check for invalid dates or nulls
- Extract date parts: Year, Quarter, Month, Day
- Remove rows with invalid/missing dates if any
UnitPrice	Float	- Check for missing/null values
- Remove or flag rows where UnitPrice <= 0 (invalid prices)
- Check for outliers (unrealistic prices)
- Ensure float type
CustomerID	Float (nullable)	- Check for missing/null values (large number missing here)
- Decide to either:
• Remove rows missing CustomerID if analysis depends on customers
• Or assign "Unknown Customer"
- Convert to integer or string
- Check for duplicates in CustomerDim
Country	Object (string)	- Check for missing/null values
- Clean strings (trim whitespace, fix inconsistent casing)
- Group rare countries if necessary
- Validate against a country list if needed
