# this variable represents the number of cars available
cars = 100

# this variable represents the number of spaces in a car
space_in_a_car = 4 # removed floating part as people cannot be divided

# this variable represents the number of drivers available
drivers = 30

# this variable represents the number of passangers who will travel
passengers = 90

# this variable represents the number of cars which are not being driven
cars_not_driven = cars - drivers

# this variable represents the number of cars which are being driven
cars_driven = drivers

# this variable represents the total number of spaces in a car available
carpool_capacity = cars_driven * space_in_a_car

# this variable represents the average number of people who should be carpooled per car
average_passengers_per_car = passengers / cars_driven


puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."
