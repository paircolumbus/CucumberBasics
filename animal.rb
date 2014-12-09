class Animal
  attr_reader :type, :name, :age

  def initialize(name, type, age)
    @name = name
    @type = type
    @age = age
  end

  def old?
    age > 3
  end
end

class Greeter

  attr_reader :animal

  def initialize(animal)
    @animal = animal
  end

  def cat?
    animal.type == 'cat'
  end

  def greet
    if cat?
      "Mr Cat"
    else
      "We don't know how to greet #{animal.name}"
    end
  end
end
