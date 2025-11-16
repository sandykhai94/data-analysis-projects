def cents_to_dollars(amounts):
   return amounts / 100

result = cents_to_dollars(2500)
print("Result:", result)

print(cents_to_dollars(2500) * 1.07) # add tax

def sum_and_average(a,b,c):
   total = a + b + c
   avg = total/3
   return avg
   print("This never runs") #unreachable code

result = sum_and_average(2, 4, 6)
print("Returned value:", result)

def show_sum(a,b):
   print(a+b)

def give_sum(a,b):
   return a+b

show = show_sum(2,3)
give = give_sum(2,3)

print(f"Returned value of show_sum: {show}")
print(f"Returned value of give_sum: {give}")


def calculate_tax(amount):
   return amount * 0.07 #calculate tax owed on amount, and return the value

def total_with_tax(amount):
   tax = calculate_tax(amount)
   total = amount + tax
   return total

print(total_with_tax(100))

expense_1 = total_with_tax(100)
expense_2 = total_with_tax(50)
expense_3 = total_with_tax(10)

grand_total = expense_1 + expense_2 + expense_3
print(grand_total)

def clean_amount(value):
   # remove dollar signs and commas, convert to float
   return float(value.replace("$","").replace(",",""))
def convert_to_usd(amount, conversion_rate):
    return amount * conversion_rate
def process_transaction(value, rate):
    #combine cleaning and conversion steps into one function
    clean_value = clean_amount(value)
    return convert_to_usd(clean_value, rate)
print(process_transaction("$1,200", 1.1))


def standardize_label(label):
   #make label lowercase and stripping whitespace
   return label.strip().lower()

def is_priority_category(label):
   #check if cleaned label is in our priority list
   clean = standardize_label(label)
   return clean in ["urgent", "high"]
print(is_priority_category("   HIGH"))
print(is_priority_category("regular"))


#muliple functions to return a value 

def revenue_stat(values):
   total = sum(values)
   avg = total / (len(values))
   return total, avg #returns as a tuple

total_revenue, avg_revenue = revenue_stat([1200, 900, 1100])
print(f"total revenue: {total_revenue} average revenue: {avg_revenue}")

my_list = [1,2,3,4,5]

# assess if a given email is a company email or not

def extract_domain (email):
   return email.split("@")[1]

def is_internal_email(email):
   return extract_domain(email).lower()== "mycompany.com"

print(is_internal_email("alex@mycompany.com"))
print(is_internal_email("personal@gmail.com"))

def classify_scores(score):
   if score is None:
      return "missing score"
   if score >= 90:
      return "excellent"
   if score >= 75: 
      return "solid"
   return "keep practicing, you got this!"

print(classify_scores(92))
print(classify_scores(None))