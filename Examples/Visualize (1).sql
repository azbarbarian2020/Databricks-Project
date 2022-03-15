-- Databricks notebook source
select state_id as state, COUNT(zip) as nzipszzz
from uszips_delta_unmanaged
where state_id not in ('AS','GU','MP','PR','VI')
GROUP BY state
order by nzips

-- COMMAND ----------

select state_id as state, sum(population) as population
from uszips_delta_unmanaged
where state_id not in ('AS','GU','MP','PR','VI')
GROUP BY state
order by state

-- COMMAND ----------


