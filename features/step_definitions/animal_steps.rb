Given(/^a (.*?) called (.*?) who is (\d+) years old$/) do |type, name, age|
  @animal = Animal.new(name, type, age.to_i)
end

Then(/^name should be (.*?)$/) do |name|
  expect(@animal.name).to eq name
end

And(/^is of type '(.*?)'$/) do |type|
  expect(@animal.type).to eq type
end

And(/^be of age (\d+)$/) do |age|
  expect(@animal.age).to eq age.to_i
end

Then(/^should not be old$/) do
  expect(@animal.old?).to be false
end
