Given(/^an animal$/) do
  @animal = Animal.new('Ein', 'dog', 5)
end

When(/^its name is "(.*?)"$/) do |name|
  expect(@animal.name).to eq name
end

When(/^its type is "(.*?)"$/) do |type|
  expect(@animal.type).to eq type
end

When(/^its age is (\d+)$/) do |age|
  expect(@animal.age).to eq age.to_i
end

Then(/^it should be "(.*?)"$/) do |arg1|
  expect(@animal.old?).to be true
end
