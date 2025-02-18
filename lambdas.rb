full_name = lambda{|first_name, last_name| first_name + " " + last_name}
p full_name["Jorden", "Hudgens"]

# stabby lambda
full_name = ->(first, last){ first + " " + last}
p full_name["Jorden", "Hudgens"]

full_name = ->(first){first*5}
p full_name["shalini"]
