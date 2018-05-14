Given(/^an Animal$/) do
    @animal = Animal.new('Lucy', 'dog', 4)
    @animal1 = Animal.new('Robert', 'fish', 2)
  end

  Then(/^I check it is a "(.*?)"$/) do |arg1|
    expect(@animal.type).to eq "dog"
    expect(@animal1.type).to eq "fish"
  end

  Then(/^I verify it has an "(.*?)"$/) do |arg1|
    expect(@animal.age).to eq 4
    expect(@animal1.age).to eq 2
  end

  Then(/^I see if it has a "(.*?)"$/) do |arg1|
    expect(@animal.name).to eq "Lucy"
    expect(@animal1.name).to eq "Robert"
  end

  Then(/^I see if it is old$/) do
    expect(@animal.old?).to eq true    
    expect(@animal1.old?).to eq false    
  end