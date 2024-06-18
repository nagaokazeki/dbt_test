

  create or replace view `systemn-playground`.`nagaoka_dbt_test`.`sakamichi`
  OPTIONS()
  as SELECT 
id as id,
nama as name,
salary*10 as salary
FROM `systemn-playground.nagaoka_dbt_test.saka_シート3`;

