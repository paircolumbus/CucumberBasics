Given(/^an animal$/) do
  @animal = Animal.new('Lucy', 'cat', 4)
end

Then(/^records name, type and age$/) do
  expect(@animal.name).to eq('Lucy')
  expect(@animal.type).to eq('cat')
  expect(@animal.age).to eq(4)
end
