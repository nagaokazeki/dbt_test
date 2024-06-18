{% set table_name = var('TABLE') %}

WITH raw_data AS (
    SELECT
        id
    FROM `nagaoka_dbt_test.{{ table_name }}`
)


SELECT
    id
FROM raw_data
where false
