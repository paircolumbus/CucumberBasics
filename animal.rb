# Fill out the 'animal.feature' and 'animal_steps.rb' to test this class

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

  def assign_room
    case @type
    when 'dog' then 'house'
    when 'cat' then 'sill'
    when 'fish' then 'bowl'
    when 'turtle' then 'pond'
    when 'hamster' then 'wheel'
    when 'iguana' then 'rock'
    else 'bed'
    end
  end
end
