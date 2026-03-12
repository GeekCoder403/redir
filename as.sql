select
  FORMAT_TIMESTAMP(
    '%H:%M:%S %d %B',
    DATETIME(timestamp)
  ) AS formatted_timestamp,
  h.x_real_ip,
  cf.asOrganization,
  cf.city,
  cf.postalCode,
  cf.country
from edge_logs
  left join unnest(metadata) as m on true
  left join unnest(m.request) as r on true
  left join unnest(r.headers) as h on true
  left join unnest(r.cf) as cf on true
WHERE
  h.x_real_ip IS NOT NULL
  AND cf.asOrganization IS NOT NULL
  AND cf.asOrganization != 'Amazon Data Services Northern Virginia'
  AND cf.asOrganization != 'Amazon Technologies Inc.'
  /*AND h.x_real_ip != '207.134.135.252'*/