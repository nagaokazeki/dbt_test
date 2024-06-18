-- テーブル名を動的に設定するための変数
{% set table_name = var('TABLE') %}
{% set target_table_name = 'raw_data_' ~ table_name %}


-- テーブルから必要なカラムを抽出してraw_dataテーブルを作成する
WITH raw_data AS (
    SELECT
        id,
        nama,
        salary
    FROM `nagaoka_dbt_test.{{ table_name }}`
)

-- raw_dataテーブルを作成する
{{ config(
    materialized='table',
    alias=target_table_name
) }}

SELECT
    id as id,
    nama as name,
    salary*100 as salary 
FROM raw_data
