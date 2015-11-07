select 'Load data to temporary tables for audjpy.' as Label;

delete from tmp_audjpy_hour where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_audjpy_hour (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_audjpy_hour
 where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_audjpy_day where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_audjpy_day (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_audjpy_day
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_audjpy_week where date_time >= date_trunc('week', now() - interval '40days');
insert into tmp_audjpy_week (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_audjpy_week
where date_time >= date_trunc('week', now() - interval '40days');

delete from tmp_audjpy_month where date_time >= date_trunc('month', now() - interval '40days');
insert into tmp_audjpy_month (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_audjpy_month
where date_time >= date_trunc('month', now() - interval '40days');

delete from tmp_audjpy_5hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_audjpy_5hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_audjpy_5hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_audjpy_12hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_audjpy_12hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_audjpy_12hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_audjpy_8hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_audjpy_8hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_audjpy_8hours
where date_time >= date_trunc('day', now() - interval '40days');


select 'Load data to temporary tables for audusd.' as Label;

delete from tmp_audusd_hour where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_audusd_hour (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_audusd_hour
 where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_audusd_day where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_audusd_day (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_audusd_day
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_audusd_week where date_time >= date_trunc('week', now() - interval '40days');
insert into tmp_audusd_week (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_audusd_week
where date_time >= date_trunc('week', now() - interval '40days');

delete from tmp_audusd_month where date_time >= date_trunc('month', now() - interval '40days');
insert into tmp_audusd_month (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_audusd_month
where date_time >= date_trunc('month', now() - interval '40days');

delete from tmp_audusd_5hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_audusd_5hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_audusd_5hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_audusd_12hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_audusd_12hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_audusd_12hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_audusd_8hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_audusd_8hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_audusd_8hours
where date_time >= date_trunc('day', now() - interval '40days');


select 'Load data to temporary tables for cadjpy.' as Label;

delete from tmp_cadjpy_hour where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_cadjpy_hour (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_cadjpy_hour
 where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_cadjpy_day where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_cadjpy_day (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_cadjpy_day
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_cadjpy_week where date_time >= date_trunc('week', now() - interval '40days');
insert into tmp_cadjpy_week (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_cadjpy_week
where date_time >= date_trunc('week', now() - interval '40days');

delete from tmp_cadjpy_month where date_time >= date_trunc('month', now() - interval '40days');
insert into tmp_cadjpy_month (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_cadjpy_month
where date_time >= date_trunc('month', now() - interval '40days');

delete from tmp_cadjpy_5hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_cadjpy_5hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_cadjpy_5hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_cadjpy_12hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_cadjpy_12hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_cadjpy_12hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_cadjpy_8hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_cadjpy_8hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_cadjpy_8hours
where date_time >= date_trunc('day', now() - interval '40days');


select 'Load data to temporary tables for chfjpy.' as Label;

delete from tmp_chfjpy_hour where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_chfjpy_hour (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_chfjpy_hour
 where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_chfjpy_day where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_chfjpy_day (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_chfjpy_day
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_chfjpy_week where date_time >= date_trunc('week', now() - interval '40days');
insert into tmp_chfjpy_week (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_chfjpy_week
where date_time >= date_trunc('week', now() - interval '40days');

delete from tmp_chfjpy_month where date_time >= date_trunc('month', now() - interval '40days');
insert into tmp_chfjpy_month (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_chfjpy_month
where date_time >= date_trunc('month', now() - interval '40days');

delete from tmp_chfjpy_5hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_chfjpy_5hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_chfjpy_5hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_chfjpy_12hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_chfjpy_12hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_chfjpy_12hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_chfjpy_8hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_chfjpy_8hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_chfjpy_8hours
where date_time >= date_trunc('day', now() - interval '40days');


select 'Load data to temporary tables for eurjpy.' as Label;

delete from tmp_eurjpy_hour where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_eurjpy_hour (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_eurjpy_hour
 where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_eurjpy_day where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_eurjpy_day (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_eurjpy_day
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_eurjpy_week where date_time >= date_trunc('week', now() - interval '40days');
insert into tmp_eurjpy_week (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_eurjpy_week
where date_time >= date_trunc('week', now() - interval '40days');

delete from tmp_eurjpy_month where date_time >= date_trunc('month', now() - interval '40days');
insert into tmp_eurjpy_month (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_eurjpy_month
where date_time >= date_trunc('month', now() - interval '40days');

delete from tmp_eurjpy_5hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_eurjpy_5hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_eurjpy_5hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_eurjpy_12hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_eurjpy_12hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_eurjpy_12hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_eurjpy_8hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_eurjpy_8hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_eurjpy_8hours
where date_time >= date_trunc('day', now() - interval '40days');


select 'Load data to temporary tables for eurusd.' as Label;

delete from tmp_eurusd_hour where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_eurusd_hour (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_eurusd_hour
 where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_eurusd_day where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_eurusd_day (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_eurusd_day
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_eurusd_week where date_time >= date_trunc('week', now() - interval '40days');
insert into tmp_eurusd_week (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_eurusd_week
where date_time >= date_trunc('week', now() - interval '40days');

delete from tmp_eurusd_month where date_time >= date_trunc('month', now() - interval '40days');
insert into tmp_eurusd_month (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_eurusd_month
where date_time >= date_trunc('month', now() - interval '40days');

delete from tmp_eurusd_5hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_eurusd_5hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_eurusd_5hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_eurusd_12hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_eurusd_12hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_eurusd_12hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_eurusd_8hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_eurusd_8hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_eurusd_8hours
where date_time >= date_trunc('day', now() - interval '40days');


select 'Load data to temporary tables for gbpjpy.' as Label;

delete from tmp_gbpjpy_hour where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_gbpjpy_hour (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_gbpjpy_hour
 where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_gbpjpy_day where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_gbpjpy_day (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_gbpjpy_day
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_gbpjpy_week where date_time >= date_trunc('week', now() - interval '40days');
insert into tmp_gbpjpy_week (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_gbpjpy_week
where date_time >= date_trunc('week', now() - interval '40days');

delete from tmp_gbpjpy_month where date_time >= date_trunc('month', now() - interval '40days');
insert into tmp_gbpjpy_month (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_gbpjpy_month
where date_time >= date_trunc('month', now() - interval '40days');

delete from tmp_gbpjpy_5hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_gbpjpy_5hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_gbpjpy_5hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_gbpjpy_12hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_gbpjpy_12hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_gbpjpy_12hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_gbpjpy_8hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_gbpjpy_8hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_gbpjpy_8hours
where date_time >= date_trunc('day', now() - interval '40days');


select 'Load data to temporary tables for gbpusd.' as Label;

delete from tmp_gbpusd_hour where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_gbpusd_hour (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_gbpusd_hour
 where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_gbpusd_day where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_gbpusd_day (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_gbpusd_day
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_gbpusd_week where date_time >= date_trunc('week', now() - interval '40days');
insert into tmp_gbpusd_week (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_gbpusd_week
where date_time >= date_trunc('week', now() - interval '40days');

delete from tmp_gbpusd_month where date_time >= date_trunc('month', now() - interval '40days');
insert into tmp_gbpusd_month (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_gbpusd_month
where date_time >= date_trunc('month', now() - interval '40days');

delete from tmp_gbpusd_5hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_gbpusd_5hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_gbpusd_5hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_gbpusd_12hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_gbpusd_12hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_gbpusd_12hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_gbpusd_8hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_gbpusd_8hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_gbpusd_8hours
where date_time >= date_trunc('day', now() - interval '40days');


select 'Load data to temporary tables for nzdjpy.' as Label;

delete from tmp_nzdjpy_hour where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_nzdjpy_hour (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_nzdjpy_hour
 where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_nzdjpy_day where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_nzdjpy_day (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_nzdjpy_day
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_nzdjpy_week where date_time >= date_trunc('week', now() - interval '40days');
insert into tmp_nzdjpy_week (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_nzdjpy_week
where date_time >= date_trunc('week', now() - interval '40days');

delete from tmp_nzdjpy_month where date_time >= date_trunc('month', now() - interval '40days');
insert into tmp_nzdjpy_month (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_nzdjpy_month
where date_time >= date_trunc('month', now() - interval '40days');

delete from tmp_nzdjpy_5hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_nzdjpy_5hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_nzdjpy_5hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_nzdjpy_12hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_nzdjpy_12hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_nzdjpy_12hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_nzdjpy_8hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_nzdjpy_8hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_nzdjpy_8hours
where date_time >= date_trunc('day', now() - interval '40days');


select 'Load data to temporary tables for usdjpy.' as Label;

delete from tmp_usdjpy_hour where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_usdjpy_hour (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_usdjpy_hour
 where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_usdjpy_day where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_usdjpy_day (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_usdjpy_day
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_usdjpy_week where date_time >= date_trunc('week', now() - interval '40days');
insert into tmp_usdjpy_week (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_usdjpy_week
where date_time >= date_trunc('week', now() - interval '40days');

delete from tmp_usdjpy_month where date_time >= date_trunc('month', now() - interval '40days');
insert into tmp_usdjpy_month (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_usdjpy_month
where date_time >= date_trunc('month', now() - interval '40days');

delete from tmp_usdjpy_5hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_usdjpy_5hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_usdjpy_5hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_usdjpy_12hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_usdjpy_12hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_usdjpy_12hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_usdjpy_8hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_usdjpy_8hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_usdjpy_8hours
where date_time >= date_trunc('day', now() - interval '40days');


select 'Load data to temporary tables for zarjpy.' as Label;

delete from tmp_zarjpy_hour where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_zarjpy_hour (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_zarjpy_hour
 where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_zarjpy_day where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_zarjpy_day (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_zarjpy_day
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_zarjpy_week where date_time >= date_trunc('week', now() - interval '40days');
insert into tmp_zarjpy_week (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_zarjpy_week
where date_time >= date_trunc('week', now() - interval '40days');

delete from tmp_zarjpy_month where date_time >= date_trunc('month', now() - interval '40days');
insert into tmp_zarjpy_month (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_zarjpy_month
where date_time >= date_trunc('month', now() - interval '40days');

delete from tmp_zarjpy_5hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_zarjpy_5hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_zarjpy_5hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_zarjpy_12hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_zarjpy_12hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_zarjpy_12hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_zarjpy_8hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_zarjpy_8hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_zarjpy_8hours
where date_time >= date_trunc('day', now() - interval '40days');


select 'Load data to temporary tables for eurchf.' as Label;

delete from tmp_eurchf_hour where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_eurchf_hour (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_eurchf_hour
 where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_eurchf_day where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_eurchf_day (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_eurchf_day
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_eurchf_week where date_time >= date_trunc('week', now() - interval '40days');
insert into tmp_eurchf_week (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_eurchf_week
where date_time >= date_trunc('week', now() - interval '40days');

delete from tmp_eurchf_month where date_time >= date_trunc('month', now() - interval '40days');
insert into tmp_eurchf_month (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_eurchf_month
where date_time >= date_trunc('month', now() - interval '40days');

delete from tmp_eurchf_5hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_eurchf_5hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_eurchf_5hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_eurchf_12hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_eurchf_12hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_eurchf_12hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_eurchf_8hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_eurchf_8hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_eurchf_8hours
where date_time >= date_trunc('day', now() - interval '40days');


select 'Load data to temporary tables for gbpchf.' as Label;

delete from tmp_gbpchf_hour where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_gbpchf_hour (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_gbpchf_hour
 where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_gbpchf_day where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_gbpchf_day (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_gbpchf_day
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_gbpchf_week where date_time >= date_trunc('week', now() - interval '40days');
insert into tmp_gbpchf_week (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_gbpchf_week
where date_time >= date_trunc('week', now() - interval '40days');

delete from tmp_gbpchf_month where date_time >= date_trunc('month', now() - interval '40days');
insert into tmp_gbpchf_month (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_gbpchf_month
where date_time >= date_trunc('month', now() - interval '40days');

delete from tmp_gbpchf_5hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_gbpchf_5hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_gbpchf_5hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_gbpchf_12hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_gbpchf_12hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_gbpchf_12hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_gbpchf_8hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_gbpchf_8hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_gbpchf_8hours
where date_time >= date_trunc('day', now() - interval '40days');


select 'Load data to temporary tables for usdchf.' as Label;

delete from tmp_usdchf_hour where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_usdchf_hour (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_usdchf_hour
 where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_usdchf_day where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_usdchf_day (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_usdchf_day
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_usdchf_week where date_time >= date_trunc('week', now() - interval '40days');
insert into tmp_usdchf_week (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_usdchf_week
where date_time >= date_trunc('week', now() - interval '40days');

delete from tmp_usdchf_month where date_time >= date_trunc('month', now() - interval '40days');
insert into tmp_usdchf_month (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_usdchf_month
where date_time >= date_trunc('month', now() - interval '40days');

delete from tmp_usdchf_5hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_usdchf_5hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_usdchf_5hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_usdchf_12hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_usdchf_12hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_usdchf_12hours
where date_time >= date_trunc('day', now() - interval '40days');

delete from tmp_usdchf_8hours where date_time >= date_trunc('day', now() - interval '40days');
insert into tmp_usdchf_8hours (date_time, opening_price, high_price, low_price, closing_price)
select date_time, opening_price, high_price, low_price, closing_price from v_usdchf_8hours
where date_time >= date_trunc('day', now() - interval '40days');


select 'Delete data from temporary tables.' as Label;
delete from tmp_audjpy where date_time < date_trunc('day', now() - interval '3months');
delete from tmp_audusd where date_time < date_trunc('day', now() - interval '3months');
delete from tmp_cadjpy where date_time < date_trunc('day', now() - interval '3months');
delete from tmp_chfjpy where date_time < date_trunc('day', now() - interval '3months');
delete from tmp_eurjpy where date_time < date_trunc('day', now() - interval '3months');
delete from tmp_eurusd where date_time < date_trunc('day', now() - interval '3months');
delete from tmp_gbpjpy where date_time < date_trunc('day', now() - interval '3months');
delete from tmp_gbpusd where date_time < date_trunc('day', now() - interval '3months');
delete from tmp_nzdjpy where date_time < date_trunc('day', now() - interval '3months');
delete from tmp_usdjpy where date_time < date_trunc('day', now() - interval '3months');
delete from tmp_zarjpy where date_time < date_trunc('day', now() - interval '3months');
delete from tmp_eurchf where date_time < date_trunc('day', now() - interval '3months');
delete from tmp_gbpchf where date_time < date_trunc('day', now() - interval '3months');
delete from tmp_usdchf where date_time < date_trunc('day', now() - interval '3months');
