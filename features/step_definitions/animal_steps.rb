Given(/^animal with type, name, and age$/) do
	@animal = Animal.new('Lucy', 'cat', 4)
end

Then(/^I will be able to tell if animal is old$/) do
	expect(@animal.old?).to be true
end

Then(/^I should be able to see animals type, name, age$/) do
	expect(@animal.name).to eq 'Lucy'
	expect(@animal.type).to eq 'cat'
	expect(@animal.age).to eq 4
end

