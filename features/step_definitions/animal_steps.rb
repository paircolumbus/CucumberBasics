Given(/^a 6 year old dog named Jake$/) do  
  @jake = Animal.new('Jake', 'dog', 6)
end

Then(/^I should see Jake's age, type, name$/) do 
	@jake.name == 'Jake'
	@jake.type == 'dog'
	@jake.age == 6
end

And(/^it is true he is old$/) do 
	expect(@jake.old?).to be true
end