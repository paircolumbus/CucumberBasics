# Fill out the 'animal.feature' and 'animal_steps.rb' to test this class

class Animal
  attr_reader :type, :name, :age

  def initialize(name, type, age)
    @name = name
    @type = type
    @age = age.to_i > 0? age.to_i: 1
  end

  def old?
    age > 0
  end
end
