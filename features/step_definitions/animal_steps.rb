#Delete this comment, here is where you should write your step defs

Given(/^a (\w+) named (\w+) that is (\d+) years old$/) do |type, name, age|
  @animal = Animal.new(name, type, age.to_i)
end

When(/^the (\w+) ([\w']+) older than (\d+)$/) do |type, verb, age|
  is_old = (verb == "is")

  expect(@animal.old?).to eq(is_old)
end

Then(/^the (\w+) ([\w']+) old$/) do |type, verb|
  is_old = (verb == "is")

  expect(@animal.type).to eq(type)
  expect(@animal.old?).to eq(is_old)
end
