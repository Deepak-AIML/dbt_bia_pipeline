with sms_df as (
  select
  date(date) as date,
  channel,
  campaign_name,
  event_name,
  value
  FROM `dbt-pipeline-415806.campaign.sms_raw` 
)

select * from sms_df