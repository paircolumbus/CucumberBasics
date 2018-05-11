Given(/^an animal that is four years old$/) do
  @animal = Animal.new('Gidget', 'cat', 4)
end

Then(/^it is named 'Gidget'$/) do
  expect(@animal.name).to eq 'Gidget'
end

Then(/^it has a type of 'cat'$/) do
  expect(@animal.type).to eq 'cat'
end

Then(/^it is considered old$/) do
  expect(@animal.old?).to be true
end
