Given(/^an animal$/) do
  @animal = Animal.new('Elsa', 'cat', 2)
end

Then(/^it has a name 'Elsa'$/) do
  expect(@animal.name).to eq('Elsa')
end

Then(/^it has an age of (\d+)$/) do |arg1|
  expect(@animal.age).to eq(2)
end

Then(/^it is not old$/) do
  expect(@animal.old?).to be(false)
end
