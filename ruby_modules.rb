class Sale
  def initialize(params)
    @params = params
  end

  def call
    puts "Params in class: #{@params}"
  end
end

sale = Sale.new("Class params")
sale.call

# Calling a single module

# module ModuleDef
#   def self.method1
#     puts "Hello Module Method 1"
#   end
# end

# ModuleDef.method1

# Calling a nested module
# module ModuleDef
#   module FormBuilder
#     def self.method1
#       puts "Hello Module Method 1"
#     end
#   end
# end

# ModuleDef::FormBuilder.method1

# calling a nested class module

module ModuleDef
  module FormBuilder
    class << self
      def method1(params)
        # puts "Hello Module Method 1"
        subtotal = params[:subtotal]
        state_name = params[:state_name]
        tax_amount = subtotal * tax_rate(state_name)
        puts subtotal + tax_amount
      end


    end

    private
    def self.tax_rate(state)
      if state == "AZ"
        0.065
      elsif state == "CA"
        0.087
      end
    end



  end
end

# form_data = {
#   subtotal: 5.5,
#   state_name: "AZ"
# }

form_data = {
  subtotal: 5.5,
  state_name: "CA"
}

ModuleDef::FormBuilder.method1(form_data)

