flavors = {
  'chocolate' : 0.35,
  'vanilla' : 0.35,
  'strawberry' : 0.42,
  'cookies and cream' : 0.45,
  'mint chocolate chip' : 0.42,
  'fudge chunk' : 0.45,
  'saffron' : 2.25,
  'garlic' : 0.05
}

## Set a variable called choice to the flavor you want to search for.
choice = 'mint choclate chip'

## Use an if statement to check if choice is in the flavors dictionary.
if choice in flavors:
    print(f"{'mint chocolate chip'} is a valid flavor.")
else:
    print(f"{'mint chocolate chip'} is not a valid flavor.")

## If it is, set another variable called cost to the value associated with choice.


## If it isn’t, set cost to 0.

if choice in flavors:
    print(f"{'mint chocolate chip'} is a valid flavor.")
else:
   cost = 0

## Print the cost.
flavors = {
    'mint chocolate chip' : 0.42
}
print(flavors)
flavors['mint chocolate chip'] = 0
print(flavors)

### Search a Dictionary Part 2:

## Initialize two variables: highest_cost to 0 and fanciest to an empty string.
highest_cost = 0

fanciest = ''
## Loop through the flavors dictionary using a for loop.
flavors = {
  'chocolate' : 0.35,
  'vanilla' : 0.35,
  'strawberry' : 0.42,
  'cookies and cream' : 0.45,
  'mint chocolate chip' : 0.42,
  'fudge chunk' : 0.45,
  'saffron' : 2.25,
  'garlic' : 0.05
}
for flavor in flavors:
    print(f"{flavors}: {cost}")

## For each flavor, check if its price is higher than highest_cost.
flavors = {
  'chocolate' : 0.35,
  'vanilla' : 0.35,
  'strawberry' : 0.42,
  'cookies and cream' : 0.45,
  'mint chocolate chip' : 0.42,
  'fudge chunk' : 0.45,
  'saffron' : 2.25,
  'garlic' : 0.05
}
highest_cost = 0
fanciest = ""

if flavors[flavor] > highest_cost:
        highest_cost = flavors[flavor]
        fanciest = flavor

print(f"The highest cost flavor is '{fanciest}' at ${highest_cost}.")

## If it is, update fanciest to this flavor and highest_cost to its price.


## After the loop, print the most expensive flavor.
print('The fanciest flavor is', fanciest, 'and it costs', highest_cost)