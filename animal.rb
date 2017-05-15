# Fill out the 'animal.feature' and 'animal_steps.rb' to test this class
require 'pry'
class Animal
  attr_reader :type, :name, :age

  def initialize(name, type, age)
    @name = name
    @type = type
    @age = age
  end

  def old?
    #binding.pry
    age > 3
  end
end
