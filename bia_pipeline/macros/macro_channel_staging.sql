{% macro macro_channel_staging(table_name) %}

{% set table_ref = "`" ~ 'dbt-pipeline-415806' ~ "." ~ 'campaign' ~ table_name ~ "`" %}

with df as (
select
  date(date) as date,
  channel,
  campaign_name,
  event_name,
  value
  FROM {{ table_ref }})

select * from df

{% endmacro %}
