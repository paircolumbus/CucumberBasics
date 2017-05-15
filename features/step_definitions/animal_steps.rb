Given(/a animal/) do
  @animal = Animal.new('Steve', 'elephant', 2)
end

When(/^(\d+)$/) do |arg1|
  expect(@animal.age).to be arg1.to_i
end

When(/^It's an "(.*?)"$/) do |type|
  expect(@animal.type).to eq type
end
#I should see it to be false that it is old
Then(/^I should see it to be (.*?) that it is old$/) do |arg1|
  expect(@animal.old?).to eq (arg1 == "true")
end
