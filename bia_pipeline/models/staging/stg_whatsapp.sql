with  whatsapp_raw as (
  select
  date(date) as date,
  channel,
  campaign_name,
  event_name,
  value
  FROM `dbt-pipeline-415806.campaign.whatsapp_raw` 
)

select * from whatsapp_raw