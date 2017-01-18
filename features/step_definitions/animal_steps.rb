Transform (/^(-?\d+)$/) do |number|
  number.to_i
end

Given(/^an animal$/) do
	@animal = Animal.new('Bob', 'Cat', 2)
end

When(/^the animal is a (.*?)$/) do |type|
	expect(@animal.type).to eq type
end

When(/^the anmial is named "(.*?)"$/) do |arg1|
  expect(@animal.name).to eq arg1
end

When (/^the animal is (\d+) years old$/) do |age|
  expect(@animal.age).to eq age
end

Then (/^the type should be "(.*?)"$/) do |type|
	expect(@animal.type).to eq type
end

Then(/^the name should be "(.*?)"$/) do |name|
  expect(@animal.name).to eq name
end

Then(/^the age should be (\d+)$/) do |age|
  expect(@animal.age).to eq age
end

