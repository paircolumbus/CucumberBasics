Given /^an? (\w+) that is (\w+), named "(\w+)"$/ do |type, age, name|
  @name = name
  @type = type
  @age = age.to_i
  @animal = Animal.new(name, type, @age)
end

Then /^the animal is (old|not old)$/ do |old_label|
  is_old = old_label == 'old'
  expect(@animal.old?).to eq is_old
end

Then /^the animal should have a name, age, and type$/ do
  expect(@animal.name).to eq @name
  expect(@animal.type).to eq @type
  expect(@animal.age).to eq @age
end

