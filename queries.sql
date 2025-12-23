-- query 1
select booking_id,start_date,end_date,u.name as customer_name,v.name as vehicle_name,b.status from bookings as b
inner join  users as u on b.user_id=u.user_id
inner join  vehicles as v on b.vehicle_id=v.vehicle_id

  
-- query 2
select * from vehicles where type='car' and status='available'


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