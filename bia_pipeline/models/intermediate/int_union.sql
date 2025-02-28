with union_df as (

  select * from {{ ref('stg_email') }}
  UNION ALL
  select * from {{ ref('stg_sms') }}
  UNION ALL
  select * from {{ ref('stg_whatsapp') }}
)

select * from union_df