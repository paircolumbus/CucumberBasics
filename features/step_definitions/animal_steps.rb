Given(/an animal has the name "([a-zA-z]*)"/) do |name|
  @dog = Animal.new name, "dog", 1
end

When(/^I ask for the name$/) do
  @result = @dog.name
end

Then(/^the result should be "(.*?)"/) do |name|
  expect(name.eql? @result).to be true
end
  
Given(/an animal has the type '(.*)'/) do |type|
  @dog = Animal.new "name", type, 1
end

When(/I ask for the type/) do
  @result = @dog.type
end

Given(/^an animal is (\d+) years old$/) do |age|
  @dog = Animal.new "Spike", "dog", age.to_i
end

When(/^we ask if it's old$/) do
  @result = @dog.old?
end

Then(/^it should tell us that it's false/) do
  expect(@result).to eq false
end

Then(/^it should tell us that it's true/) do
  expect(@result).to eq true
end