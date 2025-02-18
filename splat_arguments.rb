def customer_assignments customer_1, customer_2, customer_3
  p "Assigning customers: #{customer_1}, #{customer_2}, #{customer_3}"
end

customer_assignments(
  "Apple",
  "Google",
  "Facebook"
)

# rewriting the above code to splat arguments

def customer_assignments_splat *customers
  puts "Assign customers: #{customers}"
end

customer_assignments_splat(
  "Shalini",
  "Ashish",
  "Amit"
)

# the output for above code is "Assigning customers: Apple, Google, Facebook"
# "Assign customers: [\"Shalini\", \"Ashish\", \"Amit\"]"

# To convert from "Assign customers: [\"Shalini\", \"Ashish\", \"Amit\"]" to 
def customer_assignments_splat_prop *customers
  p "Assign customers prop: #{customers.join(', ')}"
end

customer_assignments_splat_prop(
  "Shalini",
  "Ashish",
  "Amit"
)

# output:
# "Assigning customers: Apple, Google, Facebook"
# "Assign customers: [\"Shalini\", \"Ashish\", \"Amit\"]"
# "Assign customers prop: Shalini, Ashish, Amit"