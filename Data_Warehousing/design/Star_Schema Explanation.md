We use a **Star Schema** instead of a Snowflake Schema because 
- It is simpler, with denormalized dimensions that make it easier for analysts to understand and query.
- It delivers faster query performance by reducing the number of joins needed compared to the normalized structure of a snowflake.
- Star schemas also integrate more smoothly with BI tools, enabling quicker aggregations and more efficient reporting.
