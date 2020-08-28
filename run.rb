require "pry"

require_relative './lib/customer.rb'
require_relative './lib/meal.rb'
require_relative './lib/waiter.rb'

terrance = Customer.new("Terrance", 27)
jason = Waiter.new("Jason", 4)
andrew = Waiter.new("Andrew", 7)
yomi = Waiter.new("Yomi", 10)
 
terrance.new_meal(yomi, 50, 6)
terrance.new_meal(yomi, 60, 8)
terrance.new_meal(yomi, 30, 4)

alex = Customer.new("Alex", 30)
rachel = Customer.new("Rachel", 27)
dan = Waiter.new("Dan", 3)
 
rachel.new_meal(yomi, 50, 10)
alex.new_meal(dan, 30, 5)

binding.pry