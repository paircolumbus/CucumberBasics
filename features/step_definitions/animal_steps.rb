Given(/^a (\d+) year old (.*?) named (.*?)$/) do |age, species, name|
  @bear = Animal.new(name, species, age.to_i)
end

Then(/^it should have the name (.*?)$/) do |name|
  expect(@bear.name).to eq name
end

And(/^have the species be (.*?)$/) do |species|
  expect(@bear.type).to eq species
end

And(/^be (\d+) years old$/) do |arg1|
  expect(@bear.age).to eq arg1.to_i
end

And(/^is not old$/) do
  expect(@bear.old?).to be false
end