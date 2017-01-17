# Fill out the 'animal.feature' and 'animal_steps.rb' to test this class

class Animal
  attr_reader :type, :name, :age

  def initialize(name, type, age)
    @name = name
    @type = type
    @age = age
  end

  def feed
    case type
    when "cat"
    	"Here is some fresh salmon."
    when "dog"
    	"Here is some prime rib."
    when "bird"
    	"Here are some tasty seeds."
    else
    	"We do not know how to feed you. Please alert the front desk."
    end
  end
end
