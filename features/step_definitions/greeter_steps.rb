Given(/^an animal$/) do
  @animal = Animal.new('Lucy', 'cat', 4)
end

When(/^older than (\d+)$/) do |arg1|
  expect(@animal.old?).to be true 
end

When(/^I verify it is a "(.*?)"$/) do |type|
  greeter = Greeter.new(@animal)
  expect(greeter.animal.type).to eq type
end

Then(/^I should see "(.*?)"$/) do |title|
  greeter = Greeter.new(@animal)
  expect(greeter.greet).to eq title
end
