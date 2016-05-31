Given(/^an animal is a (.*) with name (.*) and is (\d+) years old$/) do |type, name, age|
  @animal = Animal.new(name, type, age.to_i)
end


Then(/^I verify that its name is (.*)$/) do |arg1|
  expect(@animal.name).to eq arg1
end

Then(/^I verify that its type is (.*)$/) do |arg1|
  expect(@animal.type).to eq arg1
end

Then(/^I verify that its age is (\d+)$/) do |arg1|
  expect(@animal.age).to eq arg1.to_i
end

Then(/^I verify that it is (.*)$/) do |arg1|
  expect(@animal.old? ? "old" : "young").to eq arg1
end
