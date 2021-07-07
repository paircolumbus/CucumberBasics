Given(/^a cat$/) do
  @cat = Animal.new('Gorbypuff', 'cat', 3)
end

When(/^I am named (\w+)$/) do |name|
  expect(@cat.name).to eq(name)
end

Then(/^I should be called "(\w+)"$/) do |name|
  expect(@cat.name).to eq(name)
end

Given(/^an elk$/) do
  @elk = Animal.new('George', 'Roosevelt Elk', 6)
end

When(/^I am of type (.*)$/) do |type|
  expect(@elk.type).to eq(type)
end

Then(/^I should be recognized as a (.*)$/) do |type|
  expect(@elk.type).to eq(type)
end

Given(/^a dog$/) do
  @dog = Animal.new('Spot', 'dog', 7)
end

When(/^I am of age (\d)$/) do |age|
  expect(@dog.age).to eq(age.to_i)
end

Then(/^I should be of age (\d)$/) do |age|
  expect(@dog.age).to eq(age.to_i)
end

Given(/^a chincilla$/) do
  @chincilla = Animal.new('Fluffy', 'chincilla', 4)
end

When(/^I am older than (\d)$/) do |age|
  expect(@chincilla.age).to be > age.to_i
end

Then(/^I should be an old animal$/) do
  expect(@chincilla.old?).to eq(true)
end
