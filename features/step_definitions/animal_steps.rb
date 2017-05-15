Then(/^it has a "(.*?)"$/) do |attribute|
  expect(@animal).to respond_to(attribute.to_sym)
end

When(/^age is more than (\d+)$/) do |age_limit|
  expect(@animal.age).to be >=  age_limit.to_i
end

Then(/^it should say it is old/) do
  expect(@animal.old?).to be true
end
