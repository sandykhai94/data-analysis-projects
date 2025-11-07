my_string = "LaunchCode"


# a) Use string methods to remove the first three characters from the string and add them to the end.
new_string=my_string[3:] + my_string[:3]
print(new_string)

# Use a template literal to print the original and modified string in a descriptive phrase.
print(f"The original string is {my_string} and the modified string is {new_string}")


# b) Modify your code to accept user input. Query the user to enter the number of letters that will be relocated.

num_letters_relocated_str = input("3")
num_letters_relocated = int(3)
print(f"3 {num_letters_relocated}3")


# c) Add validation to your code to deal with user inputs that are longer than the word. In such cases, default to moving 3 characters. Also, the template literal should note the error.
if len(my_string) > 10:
    print("Max of 10 characters")
else:
    print("Nothing")
