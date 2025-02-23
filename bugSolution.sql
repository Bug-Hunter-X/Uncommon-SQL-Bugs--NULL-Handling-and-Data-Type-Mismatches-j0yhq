To correctly handle NULL values, use the `IS NULL` or `IS NOT NULL` operators:

```sql
SELECT * FROM employees WHERE salary IS NULL; -- Find employees with NULL salaries
SELECT * FROM employees WHERE salary IS NOT NULL; -- Find employees with non-NULL salaries
```

For aggregate functions, consider using `COALESCE()` or `NULLIF()` to handle NULL values.  `COALESCE()` lets you substitute a default value for NULLs:

```sql
SELECT AVG(COALESCE(salary, 0)) FROM employees; -- Replace NULL salaries with 0
```

`NULLIF()` allows you to replace specific values with NULLs. For example if you want to exclude a salary value of 0 from the average:

```sql
SELECT AVG(NULLIF(salary,0)) FROM employees; -- Exclude salary of 0
```

To prevent data type mismatches, carefully define your column data types, use appropriate casting or conversion functions, and validate user inputs before inserting data into the database.  Always check for potential truncation issues when updating existing data to ensure that data integrity is maintained.