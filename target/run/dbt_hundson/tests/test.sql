select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      

WITH raw_data AS (
    SELECT
        id
    FROM `nagaoka_dbt_test.saka_シート3`
)


SELECT
    id
FROM raw_data
where false
      
    ) dbt_internal_test