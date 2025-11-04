# Define three variables for the LaunchCode shuttle - one for the starting fuel level, another for the number of astronauts aboard, and the third for the altitude the shuttle reaches.

# Exercise #1: Construct while loops to do the following:
  # a. Query the user for the starting fuel level. Validate that the user enters a positive, integer value greater than 5000 but less than 30000. 
Starting_fuel_level = 0
Number_of_astronauts_aboard = 0 
Altitude_shuttle_reaches = 0

while Starting_fuel_level <= 5000 or Starting_fuel_level > 30000:
    Starting_fuel_level = int(input("Enter the starting fuel level:"))


# b. Use a second loop to query the user for the number of astronauts (up to a maximum of 7). Validate the entry.
  
Number_of_astronauts_aboard = 0
while not (1 <= Number_of_astronauts_aboard <= 7):
    try:
        user_input = input("0(1-7):")
        Number_of_astronauts_aboard = int(user_input)
        if not (1 <= Number_of_astronauts_aboard <= 7):
            print("Invalid input. Please enter an integer between 1 and 7.")
    except ValueError:
        print("Invalid input. Please enter an integer.")

print(f"Number of astronauts selected: {Number_of_astronauts_aboard}")
  
  
# c. Use a final loop to monitor the fuel status and the altitude of the shuttle. Each iteration, decrease the fuel level by 100 units for each astronaut aboard. Also, increase the altitude by 50 kilometers.
while fuel_level-100*Number_of_astronauts_aboard >= 0:
   altitude += 50
   fuel_level -= 100*Number_of_astronauts_aboard


# Exercise #2: Print the result with the phrase, The shuttle gained an altitude of ___ km and has ___ kg of fuel left. Fill in the blanks with the altitude and fuel level values.

# If the altitude is 2000 km or higher, add “Orbit achieved!” Otherwise add, “Failed to reach orbit.”
if altitude >= 2000:
    ending = " Orbit achieved!"
else:
    ending = " Failed to reach orbit."
    print('The shuttle gained an altitude of', altitude, 'km and has', fuel_level,'kg of fuel left.', ending)