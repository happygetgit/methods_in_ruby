# difference between procs and lambdas

#Argument Count

# 1. lambdas count the arguments u pass it on where as procs dont. bcoz procs code start with Procs.new it means it creates an object first.
full_name = ->(first, last){ first + " " + last}
# p full_name["s", "k", "J"]

full_name_proc = Proc.new{|first_name, last_name| first_name + " " + last_name }

#  below code executes without error bcoz we gave 3 arguments but it needs only two. so it takes the first 2 arguments and ignores the third one 
p full_name_proc.call("s", "k", "J")

#  below code throws an error of
# lambda_vs_proc.rb:9:in `+': no implicit conversion of nil into String (TypeError)
# from lambda_vs_proc.rb:9:in `block in <main>'
# from lambda_vs_proc.rb:11:in `<main>'
# bcoz for string concatination we need one more argument.

# p full_name_proc.call("s")

# Return Behaviour

# lambda
# def my_lambda_method
#   x = lambda { return }
#   # c.call
#   p "Text from lambda within the method"
# end

# my_lambda_method

# Proc

# lambda return the block value where as proc doesnt as soon as it sees the return in proc block it skips the remaining code also in the method.

def my_proc_method
  x = Proc.new { return }
  x.call
  p "Text from within the method"
end

my_proc_method

