In this assignment we have designed ER diagram for a vehicle rent system.

The system had 3 tables , 

1.User
2.Vehicles
3.Bookings

the User table and vehicle table is connected to the bookings table by foreign key user_id and vehicle_id

there are 4 queries given in this assignment:

The first query uses inner join to show user name as customer name, vehicle name and booking information. It is done by joining users and vehicles table to the booking table depending on the foreign keys in the booking table. The output of the first query is shown below,

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

The second query uses where to identify vehicles that have never been rented, it uses inner join with bookings table to find out vehicles that have status available and has no previous completed or confirmed status. The output of the second query is shown below,


"vehicle_id"	"name"	"type"	"model"	"registration_number"	"rental_price"	"status"
"3"	"Nissan Altima"	"car"	"2020"	"GHI-789"	"55"	"available"

The third query user where to filter car type vehicles from vehicles table which also have status available. The output of the third query is shown below,


"vehicle_id"	"name"	"type"	"model"	"registration_number"	"rental_price"	"status"
"1"	"Toyota Corolla"	"car"	"2022"	"ABC-123"	"50"	"available"
"3"	"Nissan Altima"	"car"	"2020"	"GHI-789"	"55"	"available"
"8"	"Hyundai Elantra"	"car"	"2020"	"VWX-258"	"52"	"available"
"10"	"Mercedes Sprinter"	"car"	"2018"	"BCD-753"	"95"	"available"

The fourth query uses inner join with bookings table and vehicles table, it counts total number of bookings a vehicle has had by using group by and having and if the count is larger than 2, the vehicle is shown in the output table. The output of the fourth query is shown below,


"vehicle_name"	"total_bookings"
"Honda Civic"	"3"