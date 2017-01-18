Given (/^a "(.*?)"$/) do |type|
  @animal=Animal.new('Fluffington', type, 5)
end

When (/^it is confirmed a "(.*?)"$/) do |type|
  expect(@animal.type == type)
end

When(/^older than (\d+) years old$/) do |age_limit|
  expect(@animal.age > age_limit.to_i).to be true
end

Then (/^it is confirmed old$/) do
  expect(@animal.old?).to be true
end

Then(/^the "(.*?)" responds with "(.*?)"$/) do |type, response|
  expect(@animal.respond).to eq response
end
