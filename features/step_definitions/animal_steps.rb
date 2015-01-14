Given(/^a 4 year old cat named Lucy$/) do
  @animal = Animal.new('Lucy', 'cat', 4)
end

Then(/^I should receive Lucy when I ask for its name$/) do
  expect(@animal.name).to eq('Lucy')
end

Then(/^I should receive cat when I ask for its type$/) do
  expect(@animal.type).to eq('cat')
end

Then(/^I should receive 4 when I ask for its age$/) do
  expect(@animal.age).to be 4
end

Then(/^I should receive true when I ask if its older$/) do
  expect(@animal.old?).to be true 
end
