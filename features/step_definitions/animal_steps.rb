Given /I'm a (\d+) year old (.*) named '(.*)'/ do |age, type, name|
  @animal = Animal.new(name, type, age)
end

When /ask about my "(.*)"/ do |attribute|
  expect(@animal.instance_variable_defined?("@#{attribute}")).to be true
  @attribute_value = @animal.public_send(attribute)
end

Then /should get the value "(.*)"/ do |value|
  expect(value).to eq(@attribute_value)
end

Given /I'm a (\d+) years old animal/ do |years|
  @animal = Animal.new("animal", "any", years.to_i)
end

When /younger or equeal to (\d+)/ do |years|
  expect(@animal.age).to be <= years.to_i
end


Then /should be old/ do
  expect(@animal).to be_old
end

Then /should not be old/ do
  expect(@animal).not_to be_old
end
