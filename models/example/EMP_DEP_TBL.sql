{{ config(
    materialized='table'
    ) 
}}

with source_data as (

    SELECT E.NAME EMPLOYEE_NAME, D.NAME DEPARTMENT_NAME FROM EMPLOYEES E
    JOIN DEPARTMENT D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID

)

select * from source_data