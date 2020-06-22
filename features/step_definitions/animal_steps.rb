Given(/^an animal$/) do
  @animal = Animal.new('Lucy', 'cat', 4)
end

When(/^I verify she is a "(.*?)"$/) do |type|
  expect(@animal.type).to eq type
end

Then(/^I should give her (.*?)$/) do |title|
  expect(@animal.feed).to include title
end