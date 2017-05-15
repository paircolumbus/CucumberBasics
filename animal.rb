# Fill out the 'animal.feature' and 'animal_steps.rb' to test this class

class Animal
  attr_reader :type, :name, :age

  def initialize(name, type, age)
    @name = name
    @type = type
    @age = age
  end

  def old?
    age.to_i > 3
  end

  def respond
    if @type == "cat"
      "Meow!"
    elsif @type == "dog"
      "Woof!"
    elsif @type == "cow"
      "Moo!"
    elsif @type == "fox"
      "Yip!"
    else
      "Me Tarzan!"
    end
  end
end
