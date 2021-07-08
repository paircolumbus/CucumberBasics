Given(/^Trudy/) do
  @animal = Animal.new('Trudy', 'lemur', 17)
end

When(/^we track (?:him|her)/) do
  @age = @animal.age
  @name = @animal.name
  @type = @animal.type
  @old = @animal.old?
end

Then(/^the age should be (\d+)$/) do |age|
  expect(@age).to eq(age.to_i)
end

And(/^the name should be (\w+)/) do |name|
  expect(@name).to eq(name)
end

And(/^the type should be (\w+)/) do |type|
  expect(@type).to eq(type)
end

And(/^she should be old/) do
  expect(@old).to be true
end


Given(/^Oscar/) do
  @animal = Animal.new('Oliver', 'green sea turtle', 2)
end

Then(/^he should not be old/) do
  expect(@old).to be false
end
