Given(/^an animal$/) do
  @name = "Any"
  @type = "animal"
  @age = 4
  @attributes = {'name' => @name, 'type' => @type, 'age' => @age}
  @animal = Animal.new(@name, @type, @age)
end

When(/^I ask about its "(.*?)"$/) do |attr|
  expect(@attributes.include?(attr)).to be true
end

Then(/^I should get its "(.*?)"$/) do |attr|
  expect(@animal.send(attr)).to eq @attributes[attr]
end