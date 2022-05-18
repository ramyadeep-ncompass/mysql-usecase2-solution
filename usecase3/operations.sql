# 2. Find all the duplicate time entries for respective devices.
select time,device,count(*) from analysis group by time, device having count(*) > 1;


# 3. Find all the missing timestamps for respective devices.
select * from analysis WHERE time IS NULL;


# 4. Find the hour-wise cumulative consumption of each device.	
select hour(time) as Hour, sum(consumption) as 'Total Consumption' from analysis group by Hour;


# 5. Find the peak consumption reached in a given time range for all the devices.
select device as Device, max(consumption) as 'Maximum Consumption' from analysis WHERE time between '2001-01-20 14:53:00' AND '2001-01-20 22:59:00' group by device;
