Given(/^a (\d+) year old (\w+) named (\w+)$/) { |age, breed, name|
  @animal = Animal.new(name, breed, Integer(age))
}

Then(/^they should be old$/) {
  expect(@animal.old?).to be true
}

And(/^their species should be (\w+)$/) { |species|
  expect(@animal.type).to eq species
}

And(/^their name should be (\w+)$/) { |name|
  expect(@animal.name).to eq name
}