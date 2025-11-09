proto_list1 = "3,6,9,12"
proto_list2 = "A;C;M;E"
proto_list3 = "space delimited string"
proto_list4 = "Comma-spaces, might, require, typing, caution"

strings = [proto_list1, proto_list2, proto_list3, proto_list4]

# a) Use the 'in' method to check to see if the words in each string are separated by commas (,), semicolons (;) or just spaces.
for strings in strings:
    print(f"Check Strings": '{strings}'")
    if ',' in s: 
    print 


for s in strings:
    print(f"Checking string: '{s}'")
    if ',' in s:
        print("  - Contains commas (,) [Index: {pos}]".format(pos=s.find(',')))
    if ';' in s:
        print("  - Contains semicolons (;) [Index: {pos}]".format(pos=s.find(';')))
    if ' ' in s:
        # Note: All strings except proto_list1 will have spaces, though for proto_list2 and proto_list4 
        # they might not be the *primary* delimiter for the items themselves, 
        # but they still exist in the string content in the original prompt.
        print("  - Contains spaces ( ) [Index: {pos}]".format(pos=s.find(' ')))
    print("-" * 20)



# b) If the string uses commas to separate the words, split it into an array, reverse the entries, and then join the array into a new comma separated string.



# c) If the string uses semicolons to separate the words, split it into an array, alphabetize the entries, and then join the array into a new comma separated string.



# d) If the string uses spaces to separate the words, split it into an array, reverse alphabetize the entries, and then join the array into a new space separated string.



# e) If the string uses ‘comma spaces’ to separate the list, modify your code to produce the same result as part “b”, making sure that the extra spaces are NOT part of the final string.
