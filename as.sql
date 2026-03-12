select
  cast(timestamp as datetime) as timestamp,
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
where h.x_real_ip is not null


select
  cast(timestamp as datetime) as timestamp,
  h.x_real_ip
from edge_logs
  left join unnest(metadata) as m on true
  left join unnest(m.request) as r on true
  left join unnest(r.headers) as h on true
  left join unnest(r.cf) as cf on true
where h.x_real_ip is not null
