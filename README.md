In this project we have designed ER diagram for a vehicle rent system.

The system had 3 tables , 

1.User
2.Vehicles
3.Bookings

the User table and vehicle table is connected to the bookings table by foreign key user_id and vehicle_id

there are 4 queries given in this assignment:

the first query uses inner join to show user name as customer name, vehicle name and booking information. It is done by joining users and vehicles table to the booking table depending on the foreign keys in the booking table.

The second query uses where to identify vehicles that have never been rented, it uses inner join with bookings table to find out vehicles that have status available and has no previous completed or confirmed status.

The third query user where to filter car type vehicles from vehicles table which also have status available.