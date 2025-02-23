In SQL, a common yet often overlooked error is incorrect handling of NULL values.  Consider this query:

```sql
SELECT * FROM employees WHERE salary = NULL;
```

This query will *always* return an empty set, even if there are employees with NULL salaries.  This is because the `=` operator doesn't work as expected with NULLs.  NULL represents the absence of a value, and it's not equal to anything, including itself.

Another example involves aggregate functions and NULLs:

```sql
SELECT AVG(salary) FROM employees;
```

If the `salary` column contains NULL values, the `AVG()` function will ignore them, potentially leading to inaccurate results.  The same holds true for other aggregate functions like `SUM()`, `COUNT()`, etc.

Finally, unintended data truncation can occur if a user attempts to insert or update data that exceeds the defined length or data type of a column.