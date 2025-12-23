-- query 1
select booking_id,start_date,end_date,u.name as customer_name,v.name as vehicle_name,b.status from bookings as b
inner join  users as u on b.user_id=u.user_id
inner join  vehicles as v on b.vehicle_id=v.vehicle_id


"booking_id"	"start_date"	"end_date"	"customer_name"	"vehicle_name"	"status"
"1"	"2023-10-01"	"2023-10-05"	"Alina"	"Honda Civic"	"completed"
"2"	"2023-11-01"	"2023-11-03"	"Alina"	"Honda Civic"	"completed"
"3"	"2023-09-10"	"2023-09-12"	"Boby"	"Toyota Corolla"	"completed"
"4"	"2023-12-05"	"2023-12-10"	"Charlie"	"Ford F-150"	"confirmed"
"5"	"2024-01-15"	"2024-01-18"	"Diana"	"Nissan Altima"	"pending"
"6"	"2024-02-01"	"2024-02-04"	"Ethan"	"Yamaha R15"	"completed"
"7"	"2024-03-10"	"2024-03-12"	"Fiona"	"Honda CR-V"	"cancelled"
"8"	"2024-04-20"	"2024-04-25"	"George"	"Hyundai Elantra"	"confirmed"
"9"	"2024-05-01"	"2024-05-03"	"Hannah"	"Suzuki Gixxer"	"completed"
"10"	"2024-06-12"	"2024-06-15"	"Ian"	"Kia Sportage"	"pending"
"13"	"2023-10-01"	"2023-10-05"	"Alina"	"Honda Civic"	"completed"
  
-- query 2
select * from vehicles where type='car' and status='available'

"vehicle_id"	"name"	"type"	"model"	"registration_number"	"rental_price"	"status"
"1"	"Toyota Corolla"	"car"	"2022"	"ABC-123"	"50"	"available"
"3"	"Nissan Altima"	"car"	"2020"	"GHI-789"	"55"	"available"
"8"	"Hyundai Elantra"	"car"	"2020"	"VWX-258"	"52"	"available"
"10"	"Mercedes Sprinter"	"car"	"2018"	"BCD-753"	"95"	"available"


-- query 3
select v.vehicle_id,name,type,model,registration_number,rental_price,v.status from vehicles as v
inner join bookings as b on v.vehicle_id=b.vehicle_id  where v.status <> 'rented' and b.status not in ('completed','confirmed')


-- query 4
SELECT 
  v.name as vehicle_name,
  COUNT(b.booking_id) AS total_bookings
FROM vehicles v
INNER JOIN bookings b 
  ON v.vehicle_id = b.vehicle_id
GROUP BY v.vehicle_id, v.name
HAVING COUNT(b.booking_id) > 2;