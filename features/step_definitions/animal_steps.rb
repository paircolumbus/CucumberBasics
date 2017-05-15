Given(/^that the animal is a (.*?)$/) do |animal_type|
  @animal = Animal.new('Joe', animal_type, 3)
end

Then(/^the animal's room should be a (.*?)$/) do |room_type|
  expect(@animal.assign_room).to eql room_type
end
