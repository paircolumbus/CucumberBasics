Given(/^a cat$/) do
  @cat = Animal.new('Gorbypuff', 'cat', 3)
end

When(/^I have a name$/) do
  expect(@cat.name).not_to be_nil
end

Then(/^I should be called "(\w+)"$/) do |name|
  expect(@cat.name).to eq(name)
end

Given(/^an elk$/) do
  @elk = Animal.new('George', 'Roosevelt Elk', 6)
end

When(/^I have a type$/) do
  expect(@elk.type).not_to be_nil
end

Then(/^I should be recognized as a (.*)$/) do |type|
  expect(@elk.type).to eq(type)
end

Given(/^a dog$/) do
  @dog = Animal.new('Spot', 'dog', 7)
end

When(/^I have an age$/) do
  expect(@dog.age).not_to be_nil
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
