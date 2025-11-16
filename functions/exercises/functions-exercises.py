# Part 1 A -- Make a Line
print("-") 

# Part 1 B -- Make a Square
# create a function using your make_line function to code a square

def make_line(size):
    return "#" * size
def make_square(size):  
    square_string = ""
    for _ in range(size):
        square_string += make_line(size) + "\n"
    return square_string
print(make_square(5))



# Part 1 C -- Make a Rectangle
def make_line(size):
    return "#" * size
def make_rectangle(width, height):
   rectangle = ""
   for i in range(height):
      rectangle += make_line(width)
      if i < height - 1:
         rectangle += "\n"
   return rectangle
print(make_rectangle(5, 3))



# Part 2 A -- Make a Stairs
def make_downward_stairs(height):
    stairs = ""
    for i in range(1, height + 1):
        stairs += make_line(i) + "\n"
    return stairs
print(make_downward_stairs(5))


# Part 2 B -- Make Space-Line 
def make_space_line(numSpaces, numChars):
    spaces = " " * numSpaces
    hashes = "#" * numChars
    return spaces + hashes + spaces
print(make_space_line(3, 5))



# Part 2 C -- Make Isosceles Triangle

def make_isosceles_triangle(height):
   triangle = ""
   for i in range(height):
      triangle += make_space_line(height - i - 1, 2 * i + 1)
      if i < height - 1:
         triangle += "\n"
   return triangle
print(make_isosceles_triangle(5))



# Part 3 -- Make a Diamond
def make_diamond(height):
   diamond = ""
   for i in range(height):
      spaces = " " * (height - i - 1)
      hash = "#" * (2 * i + 1)
      diamond += spaces + hash + "\n"
   for i in range(height - 2, -1, -1):
      spaces = " " * (height - i - 1)
      hash = "#" * (2 * i + 1)
      diamond += spaces + hash + "\n"
   return diamond
print(make_diamond(5))




