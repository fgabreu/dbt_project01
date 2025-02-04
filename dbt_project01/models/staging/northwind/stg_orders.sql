
WITH orders AS (
    SELECT
         orderid           AS order_id
         , customerid      AS customer_id
         , employeeid      AS employee_id
         , orderdate       AS order_date
         , requireddate    AS required_date
         , shippeddate     AS shipped_date
         , shipvia         AS ship_via
         , freight 
         , shipname        AS ship_name
         , shipcity        AS ship_city
         , shipregion      AS ship_reguion
         , shippostalcode  AS ship_postal_code
         , shipcountry     AS ship_country
         , CASE
                WHEN shippeddate IS NULL THEN 'envio pendente'
                ELSE 'enviado'
         END AS status_envio
    FROM {{ source('northwind', 'orders') }}
) 

SELECT 
* 
FROM orders 