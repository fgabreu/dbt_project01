config(
    tags=['comercial']
)

WITH orders AS (
    SELECT
         EXTRACT(month FROM order_date) AS mes
         , EXTRACT(year FROM order_date) AS ano
         ,freight AS total_frete
    FROM {{ ref('stg_orders') }}

)

, vendas AS (
    SELECT
        mes
        , ano
        , SUM(total_frete) AS total_frete
    FROM orders
    GROUP BY mes, ano
)


SELECT
*
FROM vendas