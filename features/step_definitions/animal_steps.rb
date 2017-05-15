Given(/^a (\d+) year old (.*?) named (.*?)$/) do |age, type, name|
  @animal = Animal.new(name, type, age)
end

When(/^asked my (.*?)$/) do |attribute|
  @value = @animal.public_send(attribute)
end

Then(/^the result should be (.*?)$/) do |value|
  expect(value).to eq @value
end

Given(/^a (\d+) year old animal$/) do |age|
  @animal = Animal.new('Rover', 'cat', age.to_i)
end

When(/^animal older than (\d+)$/) do |limit|
  expect(@animal.age).to be > limit.to_i
end

Then(/^the animal is old$/) do
  expect(@animal).to be_old
end

When(/^animal younger than (\d+)$/) do |limit|
  expect(@animal.age).to be <= limit.to_i
end

Then(/^the animal is not old$/) do
  expect(@animal).not_to be_old
end
