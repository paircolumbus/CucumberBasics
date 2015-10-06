Given(/^an animal$/) do
  @name = "Any"
  @type = "animal"
  @age = 4
  @attributes = {'name' => @name, 'type' => @type, 'age' => @age}
  @animal = Animal.new(@name, @type, @age)
end

When(/^I ask about its "(.*?)"$/) do |attr|
  expect(@attributes.include?(attr)).to be true
  @current_attribute = @animal.send(attr)
end

Then(/^I should get its "(.*?)"$/) do |attr|
  expect(@current_attribute).to eq @attributes[attr]
end

Given(/^an animal "(older than|younger than|exactly)" 3 years$/) do |old|
  @test_age = {"older than" => 4, "younger than" => 2, "exactly" => 3}
  @animal = Animal.new("Any", "animal", @test_age[old])
end

When(/^I ask if it is old$/) do
  @old = @animal.send("old?")
end

Then (/^I should get "(yes|no)"$/) do |old|
  expect(@old).to be (old == "yes")
end
