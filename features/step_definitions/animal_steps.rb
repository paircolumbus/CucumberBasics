Given(/^a (.*?) named (.*?) who is (\d+) years old$/) do |type, name, age|
  @animal = Animal.new(name, type, age.to_i)
end

Then(/^its type should be (.*?)$/) do |type|
  expect(@animal.type).to eq type
end

Then(/^its name should be (.*?)$/) do |name|
  expect(@animal.name).to eq name
end

Then(/^its age should be (\d+)$/) do |age|
  expect(@animal.age).to eq age.to_i
end

Then(/^it should be old$/) do
  expect(@animal.old?).to be true
end
