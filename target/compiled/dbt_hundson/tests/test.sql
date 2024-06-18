

WITH raw_data AS (
    SELECT
        id
    FROM `nagaoka_dbt_test.saka_シート3`
)


SELECT
    id
FROM raw_data
where false