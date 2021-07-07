Given(/^an old cat$/) do
  @animal = Animal.new('Lucy', 'cat', 4)
end

Given(/^a young dog$/) do
  @animal = Animal.new('Jake', 'dog', 2)
end

When(/^the animal is (\d+) years old$/) do |age|
  expect(@animal.age).to eq age.to_i
end

When(/^the animal is a (\w+)$/) do |type|
  expect(@animal.type).to eq type
end

When(/^the name is (\w+)/) do |name|
  expect(@animal.name).to eq name
end

Then(/^old\? should be true$/) do
  expect(@animal.old?).to be true
end

Then(/^old\? should be false$/) do
  expect(@animal.old?).to be false
end

Then(/^type should equal (\w+)$/) do |type|
  expect(@animal.type).to eq type
end

Then(/^name should equal (\w+)/) do |name|
  expect(@animal.name).to eq name
end
