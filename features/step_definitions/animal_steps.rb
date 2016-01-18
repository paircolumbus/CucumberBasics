Given(/^I am an animal$/) do
  @animal = Animal.new('Lucy', 'cat', 4)
end

When(/^I am older than (\d+)$/) do |arg1|
  expect(@animal.old?).to be true 
end

When(/^I check that I am a "(.*?)"$/) do |type|
  expect(@animal.type).to eq type
end

Then(/^my name should be "(.*?)"$/) do |name|
  expect(@animal.name).to eq name
end