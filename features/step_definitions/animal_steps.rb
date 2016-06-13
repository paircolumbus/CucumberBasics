Given 'a $animal_age year old $animal_type name $animal_name' do |_animal_age, _animal_type, _animal_name|
  @age = _animal_age.to_i
  @type = _animal_type
  @name = _animal_name
  @animal = Animal.new(_animal_name, _animal_type, _animal_age.to_i)
end

Then (/^the animal is (old|not old)$/) do |situation|
  expect(@animal.old?).to be situation == 'old'
end

And 'the name, age, and type should match' do
  expect(@animal.name).to be @name
  expect(@animal.type).to be @type
  expect(@animal.age).to be @age
end
