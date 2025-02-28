with campaign_daily as (
  select 
    date,
    sum(case when channel = 'sms' and event_name = 'sent' then value else 0 end) as sms_sent,
    sum(case when channel = 'sms' and event_name = 'open' then value else 0 end) as sms_open,
    sum(case when channel = 'sms' and event_name = 'click' then value else 0 end) as sms_click,
    sum(case when channel = 'sms' and event_name = 'conversion' then value else 0 end) as sms_conversion,

    sum(case when channel = 'email' and event_name = 'sent' then value else 0 end) as email_sent,
    sum(case when channel = 'email' and event_name = 'open' then value else 0 end) as email_open,
    sum(case when channel = 'email' and event_name = 'click' then value else 0 end) as email_click,
    sum(case when channel = 'email' and event_name = 'conversion' then value else 0 end) as email_conversion,

    sum(case when channel = 'whatsapp' and event_name = 'sent' then value else 0 end) as whatsapp_sent,
    sum(case when channel = 'whatsapp' and event_name = 'open' then value else 0 end) as whatsapp_open,
    sum(case when channel = 'whatsapp' and event_name = 'click' then value else 0 end) as whatsapp_click,
    sum(case when channel = 'whatsapp' and event_name = 'conversion' then value else 0 end) as whatsapp_conversion
  from {{ ref('int_union') }}
  group by 1
)

select * from campaign_daily