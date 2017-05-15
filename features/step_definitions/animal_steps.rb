Given(/^info for a dog named (.*?)$/) do |animal|
  @animal_hash = { animal => { name: animal, type: 'dog', age: rand(4..16) }}
end

When(/^I enter (.*?)'s info$/) do |name|
  animal = Animal.new(@animal_hash[name][:name], @animal_hash[name][:type], @animal_hash[name][:age])
  instance_variable_set("@#{name.downcase}", animal)
end

Then(/^I should see (.*?)'s info$/) do |name|
  animal = instance_variable_get("@#{name.downcase}")
  info   = @animal_hash[name]
  expect(animal.name).to eq info[:name]
  expect(animal.type).to eq info[:type]
  expect(animal.age).to eq info[:age]
  expect(animal.old?).to eq true
end