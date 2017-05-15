Given (/^a (\d+)\-year old '(.*?)' named '(.*?)'$/) do |age, type, name|
  @animal = Animal.new(name, type, age.to_i)
end

Then (/^it should be tracked as a '(.*?)'$/) do |type|
  expect(@animal.type).to eq type
end

Then (/^it should be named '(.*?)'$/) do |name|
  expect(@animal.name).to eq name
end

Then (/^its age should be (\d+)$/) do |age|
  expect(@animal.age).to eq age.to_i
end

Then (/^it should count as old$/) do
  expect(@animal.old?).to be_truthy
end