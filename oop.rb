# Create a BankAccount class
# Every bank account should have balance, interest_rate, and `` attributes
# At this point you should test out creating an instance of your class to make sure it works
# Your class should have an instance method called deposit that accents one amount argument and adds that amount to the total balance
# Test out your method by calling it on an instance of your class
# There should be a withdraw instance method that accents one amount argument and subtracts it from the total balance
# Don't forget to test it out!
# Finally, there should be a gain_interest instance method that increases the total balance according to the interest rate.


class BankAccount
attr_accessor :balance
  def initialize(balance, interest_rate)
@balance= 0
@interest_rate= interest_rate
  end
end


#
#  def deposit
#    @deposit
#  end
#
#
#
# end
#  # deposit.new(15)
# account1.new = BankAccount
# deposit1 = deposit.new(10, 0.05)
