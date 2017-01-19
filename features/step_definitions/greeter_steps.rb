Given(/^a animal$/) do
  @animal = Animal.new('Lucy', 'cat', 4)
end

When(/^older than (\d+)$/) do |arg1|
  expect(@animal.age).to be > 3
end

When(/^I verify it is a "(.*?)"$/) do |type|
  @greeter = Greeter.new(@animal)
  expect(@greeter.send(type + '?')).to be true
end

Then(/^I should see "(.*?)"$/) do |title|
  expect(@greeter.greet).to eq title
end
