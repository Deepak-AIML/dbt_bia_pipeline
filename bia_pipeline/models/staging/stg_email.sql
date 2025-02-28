-- {% set table_name = '.email_raw' %}

-- {{ macro_channel_staging(table_name) }}


with email_df as (
  select
  date(date) as date,
  channel,
  campaign_name,
  event_name,
  value
  FROM `dbt-pipeline-415806.campaign.email_raw` 
)

select * from email_df