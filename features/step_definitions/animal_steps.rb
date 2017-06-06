Given(/^a (\w+) named '(.+)' who is (\d+) years of age/) do |type, name, age|
  @animal = Animal.new(name, type, age.to_i)
end

Then(/^it should be tracked as a (\w+)/) do |type|
  expect(@animal.type).to eq type
end

Then(/^it should be named '(\w+)'/) do |name|
  expect(@animal.name).to eq name
end

Then(/^it should be (\d+) years old/) do |age|
  expect(@animal.age).to eq age.to_i
end

Then(/^it should be considered (young|old)/) do |age_category|
  if age_category == 'young'
    expect(@animal).not_to be_old
  else
    expect(@animal).to be_old
  end
end