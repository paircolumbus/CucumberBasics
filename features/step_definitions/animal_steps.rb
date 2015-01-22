Given /^a animal that is a (\d+) year old \"(.*)\" named \"(.*)\"$/ do |age, type, name|
	@animal = Animal.new name, type, age.to_i
end

When /^it is a \"(.*)\"$/ do |type|
	expect(@animal.type).to eq type
end

When /^it is (\d+) years old$/ do |age|
	expect(@animal.age).to eq age.to_i
end

When /^it is named \"(.*)\"$/ do |name|
	expect(@animal.name).to eq name
end

Then /^I should see that it is (young|old)$/ do |age_type|
	expect(@animal.old?).to eq (age_type.eql? "old")
end

