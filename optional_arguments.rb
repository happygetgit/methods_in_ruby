def standard_registration(email:, password:)
  puts "Building standard account for: #{email}"
end

standard_registration(
  email: "sk@g.com",
  password: "dfgsg"
)

def registration(email:, password:, **kwargs)
  puts "Building account for: #{email}"
  puts kwargs.empty?
  puts kwargs.any?
  puts kwargs
  unless kwargs.empty?
    puts "With role: #{kwargs[:role]}"
  end
end

registration(
  email: "sk@g.com",
  password: "dfgsg",
  role: "senior",
  zip: 5456456456
)

