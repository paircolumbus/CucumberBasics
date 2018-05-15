Given(/^a "(.*?)" named "(.*?)" that is (\d+) years old$/) do |type, name, age|
  @animal = Animal.new(name, type, age.to_i)
end

Then(/^it should be named "(.*?)"$/) do |name|
  expect(@animal.name).to eq name
end

Then(/^it should be a "(.*?)"$/) do |type|
  expect(@animal.type).to eq type
end

Then(/^it should be (\d+) years old$/) do |age|
  expect(@animal.age).to eq age.to_i
end

Then(/^it should be considered old$/) do
  expect(@animal.old?).to be_truthy
end

Then(/^it should not be considered old$/) do
  expect(@animal.old?).to be_falsey
end
