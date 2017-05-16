Given(/^an animal$/) do
  @animal = Animal.new('Daisy', 'Rabbit', 5)
end

When(/^the animal is a (.*?)$/) do |type|
  expect(@animal.type).to eq type
end

When(/^the animal is named "(.*?)"$/) do |arg|
  expect(@animal.name).to eq arg
end

When(/^the animal is (\d+) years old$/) do |age|
  expect(@animal.age).to eq age.to_i
end

Then(/^the type should be "(.*?)"$/) do |type|
  expect(@animal.type).to eq type
end

Then(/^the name should be "(.*?)"$/) do |name|
  expect(@animal.name).to eq name
end

Then(/^the age should be (\d+)$/) do |age|
  expect(@animal.age).to eq age.to_i
end
