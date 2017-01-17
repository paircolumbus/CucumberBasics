Given(/^a animal$/) do
  @animal = Animal.new('Lucy', 'cat', 4)
end

When(/^I verify it is a "(.*?)"$/) do |type|
  expect(@animal.type).to eq type
end

Then(/^I should see "(.*?)"$/) do |title|
  expect(@animal.feed).to eq title
end