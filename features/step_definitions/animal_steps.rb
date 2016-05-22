Given(/^a (\d+) year old "(.*?)" named "(.*?)" is registered$/) do |age, type, name|
  age = age.to_i
  @animal = Animal.new(name, type, age)
  @name = name
  @type = type
  @age = age
end

Then(/^it should have the correct name, type, and age$/) do
  expect(@animal.name).to eq @name
  expect(@animal.type).to eq @type
  expect(@animal.age).to eq @age
end

And(/^it should be listed as old$/) do
  expect(@animal.old?).to eq true
end

Then(/^it should not be listed as old$/) do
  expect(@animal.old?).to eq false
end
