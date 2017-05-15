Given(/^a (\d+) year old (.*?) named (.*?)$/) do |age, type, name|
  @animal = Animal.new(name, type, age.to_i)
end

Then(/^the name should be (.*?)$/) do |name|
  expect(@animal.name).to eq name
end

Then(/^the type should be (.*?)$/) do |type|
  expect(@animal.type).to eq type
end

Then(/^the age should be (\d+)/) do |age|
  expect(@animal.age).to eq age.to_i
end

Then(/^it is (young|old)$/) do |youth|
  expect(@animal.old?).to eq (youth == "old")
end