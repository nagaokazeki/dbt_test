-- テーブル名を動的に設定するための変数




-- テーブルから必要なカラムを抽出してraw_dataテーブルを作成する
WITH raw_data AS (
    SELECT
        id,
        nama,
        salary
    FROM `nagaoka_dbt_test.saka_シート3`
)

-- raw_dataテーブルを作成する


SELECT
    id as id,
    nama as name,
    salary*100 as salary 
FROM raw_data