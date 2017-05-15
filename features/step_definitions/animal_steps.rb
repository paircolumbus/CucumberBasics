Given(/^a animal that is a dog$/) do
  @animal = Animal.new('Rex', 'dog', 5)
end

When(/^he is (\d+)$/) do |age|
  expect(@animal.age.to_s).to eq age
end

Then(/^he is old$/) do
  expect(@animal.old?).to be true
end