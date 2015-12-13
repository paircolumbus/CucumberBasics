Given (/^a (\d+)\-year old '(.*?)' named '(.*?)'$/) do |age, type, name|
  @animal = Animal.new(name, type, age.to_i)
end

Then(/^it should be tracked as a '(.*?)', named '(.*?)', whose age is (\d+)$/) do |type, name, age|
  expect(@animal.name).to eq name
  expect(@animal.type).to eq type
  expect(@animal.age).to eq age.to_i
end