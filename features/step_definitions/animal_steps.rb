Given(/an animal/) do
end

Given(/a (\d+) year old (.*?) named '([^']+)'/) do |age,type,name|
  @animal = Animal.new(name, type, age.to_i)
end

When(/younger than (\d+)/) do |age|
  expect(@animal.age).to be < age.to_i
end

Then(/the animal's name should be '([^']+)'/) do |name|
  expect(@animal.name).to eq name
end

Then(/the animal's type should be '([^']+)'/) do |type|
  expect(@animal.type).to eq type
end

Then(/the animal's age should be (\d+)/) do |age|
  expect(@animal.age).to eq age.to_i
end

Then(/the animal should be old/) do
  expect(@animal.old?).to be true
end

Then(/the animal should not be old/) do
  expect(@animal.old?).to be false
end
