
Given(/^an animal "(.*?)", "(.*?)", "(.*?)"$/) do |name, type, age|
  @oscar = Animal.new(name)
end

Then(/^name should be "(.*?)"$/) do |name|
  expect(@oscar.name).to eq("Oscar")
end

Then(/^type should be "(.*?)"$/) do |type|
  @cat = Animal.new(type)
  expect(@cat.type).to eq("cat")
end
