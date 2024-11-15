SELECT
    id,
    ROW_NUMBER() OVER(PARTITION BY first_name) AS rownum
FROM
    users
LIMIT
    100;
