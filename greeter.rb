# The sample feature 'greeter.feature' is testing this.
# Your challenge is to test 'animal.rb' NOT this file :)

class Greeter

  attr_reader :animal

  def initialize(animal)
    @animal = animal
  end

  def cat?
    animal.type == 'cat'
  end

  def greet
    if cat? && animal.age > 3
      "Mr Cat"
    else
      "We don't know how to greet #{animal.name}"
    end
  end
end
