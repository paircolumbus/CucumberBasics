Given /^a (\d+) year old (\w+) named (\w+)$/ do |age, type, name|
  @age, @type, @name = age.to_i, type, name
  @animal = Animal.new(@name, @type, @age)
end

Then /^it is (old|not old)$/ do |situation|
  expect(@animal.old?).to be situation == 'old'
end

And /^I should see its name, type, and age$/ do
  expect(@animal.name).to be @name
  expect(@animal.type).to be @type
  expect(@animal.age).to be @age
end
