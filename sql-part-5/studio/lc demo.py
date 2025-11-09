#loop by elements
'''
expenses = [106, 400, 333, 150, 240, 370]

for expense in expenses:
    print(f"Expense after tax: ${expense * 1.08:.2f}")
'''
#expenses = [106, 400, 333, 150, 240, 370]
'''
for i in range(len(expenses)):
    print(f"Expense number {i}: original expense {expenses[i]}")
'''
'''
for i in range(len(expenses)):
    if i % 3 === 0:
        expenses[i] += 1000 #pad expenses by 1000
    print(f"updated expenses: {expenses}")
'''
'''
for i, expense in enumerate(expenses):
    print(f"Index {i}, Value {expense}")
expenses[i]
'''

'''
#tuples
employee = ("ID-104", "Alex Chen", "Data Analyst")
print(employee[1])

employee_as_list = list(employee)
employee_as_list[1] = "Alex Young"
employee = tuple(employee_as_list)
print(employee)
'''

#Dictonaries: does not to be in order, but it is important to label 

# employee = {
#     "id": "E102",
#     "name": "Alex Chen",
#     "role": "Data Analyst",
#     "salary": 72000
# }
# print(employee["name"])
# print(employee["role"])

# employee["department"] = "Research"
# employee ["salary"] = 82000
# print(employee)

# del employee["department"]
# print(employee)

# for key in employee: 
#     print(key, "-->", employee[key])

# for key, value in employee.items():
#     print(key, "-->", value)

employees = {
    "E102": {
        "name": "Alex Chen",
        "role": "Data Analyst",
        "salary": 82000,
        "department": "research"
    }, 
    "E103": {
        "name": "Jordan Smith",
        "role": "Data Engineer",
        "salary": 88000,
        "department": "infrastructure"
    }
}

print(employees["E102"]["salary"])

employees["E102"]["salary"] = 100000
print(employees["E102"])

#add location to values for someone add by the key
employees["E103"]["location"] = "remote"
print(employees)