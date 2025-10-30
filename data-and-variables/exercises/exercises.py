# 1. Declare and assign the variables here:
Space_shuttle_name = "Determination"
Shuttle_speed_mph = 17500
Distance_to_mars_km = 225000000
Distance_to_moon_km = 3844000
Miles_per_kilo = 0.621

# 2. Use print() to print the 'type' each variable. Print one item per line.
print(type(Space_shuttle_name))
print(type(Shuttle_speed_mph))
print(type(Distance_to_mars_km))
print(type(Distance_to_moon_km))
print(type(Miles_per_kilo))

# Code your solution to exercises 3 and 4 here:
#3
miles_to_mars = Distance_to_mars_km * Miles_per_kilo
hours_to_mars = Distance_to_mars_km / Shuttle_speed_mph
value_of_days_to_mars = hours_to_mars / 24

#4
print("Determination will take 330 days to reach Mars.")

# Code your solution to exercise 5 here
print("Determination will take .5 days to reach the Moon.")