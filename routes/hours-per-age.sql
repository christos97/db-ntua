`select tab3.Age_range, tab3.Time_range, count(tab3.Time_range) as Visits `+
`from ` +
`(select tab2.age_range as Age_range, case`+ 
`	when Time(tab1.Date_time) >='09:00:00' and Time(tab1.Date_time) <'10:00:00' then '[09:00:00,10:00:00)' ` +
`	when Time(tab1.Date_time) >='10:00:00' and Time(tab1.Date_time) <'11:00:00' then '[10:00:00,11:00:00)' ` +
`	when Time(tab1.Date_time) >='11:00:00' and Time(tab1.Date_time) <'12:00:00' then '[11:00:00,12:00:00)' ` +
`	when Time(tab1.Date_time) >='12:00:00' and Time(tab1.Date_time) <'13:00:00' then '[12:00:00,13:00:00)' ` +
`	when Time(tab1.Date_time) >='13:00:00' and Time(tab1.Date_time) <'14:00:00' then '[13:00:00,14:00:00)' ` +
`	when Time(tab1.Date_time) >='14:00:00' and Time(tab1.Date_time) <'15:00:00' then '[14:00:00,15:00:00)' ` +
`	when Time(tab1.Date_time) >='15:00:00' and Time(tab1.Date_time) <'16:00:00' then '[15:00:00,16:00:00)' ` +
`	when Time(tab1.Date_time) >='16:00:00' and Time(tab1.Date_time) <'17:00:00' then '[16:00:00,17:00:00)' ` +
`	when Time(tab1.Date_time) >='17:00:00' and Time(tab1.Date_time) <'18:00:00' then '[17:00:00,18:00:00)' ` +
`	when Time(tab1.Date_time) >='18:00:00' and Time(tab1.Date_time) <'19:00:00' then '[18:00:00,19:00:00)' ` +
`	when Time(tab1.Date_time) >='19:00:00' and Time(tab1.Date_time) <'20:00:00' then '[19:00:00,20:00:00)' ` +
`	when Time(tab1.Date_time) >='20:00:00' and Time(tab1.Date_time) <='21:00:00' then '[20:00:00,21:00:00]' ` +
`end as Time_range ` +
`from ` +
`(select Card, Date_time from Transaction) tab1 ` +
`left join ` +
`(select Card, case ` + 
`	when Date_of_birth >= '1990-01-01' then '<=30' `
`	when Date_of_birth < '1990-01-01' and Date_of_birth >= '1975-01-01' then '31-45' `
`	when Date_of_birth < '1975-01-01' and Date_of_birth>= '1955-01-01' then '46-65' `
`	else '65+' end as age_range ` 
`from Customer) tab2 `
`on tab1.Card = tab2.Card) tab3 `
`group by tab3.Age_range, tab3.Time_range`