Given(/^an animal$/) do
  @bob = Animal.new('Bob', 'Cat', 5)
end

Then(/^His name is "(.*?)"/) do |name|
  @bob.name == "Bob"
end

Then(/^His type is "(.*?)"/) do |type|
  @bob.type == "Cat"
end

Then(/^His age is (\d+)$/) do |age|
  @bob.age == 5
end

And (/^He is old$/) do
  expect(@bob.old?).to be true
end
