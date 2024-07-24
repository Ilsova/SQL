select range.missing_day
from (
  select generate_series('2022-01-01'::date, '2022-01-10'::date, '1 day'::interval)::date as missing_day
) as range
left join person_visits on range.missing_day = person_visits.visit_date and (person_id = 1 or person_id = 2)
where person_visits.visit_date is null
order by missing_day;
