Given(/^a (.*?) named (.*?) who is (\d+) years old$/) do |type, name, age|
  @animal = Animal.new(name, type, age.to_i)
end

Then(/^the name should be (.*?)$/) do |name|
  expect(@animal.name).to eq name
end

Then(/^the age should be (\d+)$/) do |age|
  expect(@animal.age).to eq age.to_i
end

Then(/^the type should be (.*?)$/) do |type|
  expect(@animal.type).to eq type
end

Then(/^the animal is (young|old)$/) do |old|
  expect(@animal.old?).to eq (old.eql? "old")
end
