Given(/^an animal named (.*?)$/) do |name|
  @animal = Animal.new(name, 'cat', 4)
end

Given(/^an animal that is a (.*?)$/) do |type|
  @animal = Animal.new('george', type, 4)
end

Given(/^an animal that is (\d+) years old$/) do |age|
  @animal = Animal.new('george', 'cat', age.to_i)
end

Then(/^the animal should be a (.*?)$/) do |type|
  expect(@animal.type).to eq type
end

Then(/^the animal should be named (.*?)$/) do |name|
  expect(@animal.name).to eq name
end

Then(/^the animal should be (\d+) years old$/) do |age|
  expect(@animal.age).to eq age.to_i
end

Then(/^the animal should be old$/) do
  expect(@animal.old?).to be true
end

Then(/^the animal should be young$/) do
  expect(@animal.old?).to be false
end
