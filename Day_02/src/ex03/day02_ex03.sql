with missed_dates as (
  select d::date as missing_day from generate_series('2022-01-01', '2022-01-10', '1 day'::interval) d
)
select md.missing_day from missed_dates md
left join person_visits pv1 on md.missing_day = pv1.visit_date and pv1.person_id = 1
left join person_visits pv2 on md.missing_day = pv2.visit_date and pv2.person_id = 2
where pv1.visit_date is null and pv2.visit_date is null
order by md.missing_day