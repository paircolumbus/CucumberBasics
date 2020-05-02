Given(/^a "(.*?)" named "(.*?)" that's "(.*?)" years old$/) do |type, name, age|
  @animal = Animal.new(name, type, age.to_i)
end

When(/^asking "(.*?)" it's name$/) do |arg1|
  expect(@animal.name).to eq(arg1) 
end

When(/^asking the "(.*?)" it's type$/) do |arg1|
  expect(@animal.type).to eq(arg1) 
end

When(/^asking the age "(.*?)" animal it's age$/) do |arg1|
  expect(@animal.age).to eq(arg1.to_i) 
end

Then(/^I should see it is "(.*?)"$/) do |arg1|
  if arg1 == "old"
  	expect(@animal.old?).to be true
  else
  	expect(@animal.old?).to be false
  end
end