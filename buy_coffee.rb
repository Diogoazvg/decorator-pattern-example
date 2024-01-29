# Component: Coffee
class Coffee
  def cost
    2.0 # Base cost of a regular coffee
  end

  def description
    'Regular Coffee' # Base description of a regular coffee
  end
end

# Decorator: Milk
class MilkDecorator
  def initialize(coffee)
    @coffee = coffee
  end

  def cost
    @coffee.cost + 1.0 # Add the cost of milk
  end

  def description
    "#{@coffee.description} with Milk"
  end
end

# Decorator: Sugar
class SugarDecorator
  def initialize(coffee)
    @coffee = coffee
  end

  def cost
    @coffee.cost + 0.5 # Add the cost of sugar
  end

  def description
    "#{@coffee.description} with Sugar"
  end
end

# Application
coffee = Coffee.new
puts "Order: #{coffee.description}, Cost: $#{coffee.cost}"

# Add Milk to the coffee
coffee_with_milk = MilkDecorator.new(coffee)
puts "Order: #{coffee_with_milk.description}, Cost: $#{coffee_with_milk.cost}"

# Add Sugar to the coffee with milk
coffee_with_milk_and_sugar = SugarDecorator.new(coffee_with_milk)
puts "Order: #{coffee_with_milk_and_sugar.description}, Cost: $#{coffee_with_milk_and_sugar.cost}"
