Given(/^I am a animal$/) do
  @greeter = Greeter.new('Lucy', 'cat', 4)
  @animal = Animal.new('Lucy', 'cat', 4)
end

When(/^younger than (\d+)$/) do |arg1|
  expect(@animal.old?).to be true
end

When(/^I am a "(.*?)"$/) do |type|
  greeter = Greeter.new(@animal)
  expect(greeter.animal.type).to eq type
end

Then(/^I want the room for "(.*?)"$/) do |title|
  greeter = Greeter.new(@animal)
  expect(greeter.greet).to eq title
end
