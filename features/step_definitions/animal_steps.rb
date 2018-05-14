Given(/^a animal "(.*?)", "(.*?)", "(.*?)"$/) do |name, type, age|
  @animal = Animal.new(name, type, age)
end

Then(/^name of the animal is "(.*?)"$/) do |name|
	expect(@animal.name).to eq(name)
end
Then(/^type of the animal is "(.*?)"$/) do |type|
	expect(@animal.type).to eq(type)
end

Then(/^age of the animal is "(.*?)"$/) do |age|
	expect(@animal.age).to eq(age.to_i)
end

Then(/^Should be older$/) do 
	expect(@animal.old?).to be true
end