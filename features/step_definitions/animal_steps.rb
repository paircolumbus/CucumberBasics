Given(/^an old animal$/) do
  @animal = Animal.new('Name', 'animal', 5)
end

Then(/^it should be considered old$/) do
  expect(@animal.old?).to be true
end

