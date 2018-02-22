
Given (/^Animal is a (.*?) named (.*?) who is (\d+) years old$/) do |type, name, age|
  @animal = Animal.new(name, type, age.to_i)
end

Then(/^name of the animal is "(.*?)"$/) do |arg1|
  #name of the animal is "Leo"
  expect(@animal.name).to eq arg1
end

Then(/^its type is (.*?)$/) do |type|
  expect(@animal.type).to eq type
end

Then(/^it is (\d+) years old$/) do |age|
  expect(@animal.age).to eq age.to_i
end

Then(/^the animal is old$/) do
  expect(@animal.old?).to be true
end
