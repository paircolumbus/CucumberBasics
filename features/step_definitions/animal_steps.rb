Given (/^a "(.*?)"$/) do |type|
  @animal=Animal.new('Spot', type, 5)
end

Given (/^a "(.*?)" named "(.*?)" that is (\d+) years old$/) do |type, name, age|
  @animal=Animal.new(name, type, age)
end

#old check
Then (/^they are old$/) do
  expect(@animal.old?).to eq true
end

#animal response check
Then(/^the "(.*?)" responds with "(.*?)"$/) do |type, response|
  expect(@animal.respond).to eq response
end

#name check
Then(/^they will respond to "(.*?)"/) do |name|
  expect(@animal.name).to eq name
end

#age check
Then(/^they are (\d+) years old/) do |age|
  expect(@animal.age).to eq age
end

#type check
Then (/^it is confirmed a "(.*?)"$/) do |type|
  expect(@animal.type == type)
end
