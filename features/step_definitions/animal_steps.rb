Given(/^a "(.*?)" named "(.*?)" who is (\d+) years old$/) do |type, name, age|
	@newAnimal = Animal.new(name, type, age)
end

Then(/^I should see that it is a "(.*?)"$/) do |type|
	expect(@newAnimal.type).to eq type
end

And(/^I should see that its name is "(.*?)"$/) do |name|
	expect(@newAnimal.name).to eq name
end

And(/^I should see that it is (\d+) years old$/) do |age|
	expect(@newAnimal.age).to eq age.to_i
end

And(/^this animal should be considered old$/) do
	expect(@newAnimal.old?).to be true
end
