full_name = Proc.new{|first, last| first + " " + last }
p full_name["Jorden", "Hudgens"]
p full_name.call(["Jorden", "Hudgens"])

full_name = Proc.new do |first|
  first*5
end

p full_name.call(["Jorden"])