# 1. Basic arguments syntax
puts "Basic arguments syntax"

def full_name(first_name, last_name)
  first_name + " " + last_name
end

puts full_name("shalini", "Kollivalasa")

# 2. Named arguments syntax
puts  "Named arguments syntax"

def print_address(city: , state:, zip: )
  puts city
  puts state
  puts zip
end

print_address(city: "vizag",state: "andhra", zip: 560045)

def sms_generator(api_key, num, msg, locale)

end

sms_generator('9234aed5', 555555555, 'hey there', 'US')

# 3. Default arguments syntax

puts "Default arguments syntax"
def stream_movie title: , lang: "telugu"
  puts title
  puts lang
end

stream_movie title: "The fountainhaid"

