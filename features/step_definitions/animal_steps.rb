#Delete this comment, here is where you should write your step defs
Given(/^an animal that is a Lion$/) do
  @animal = Animal.new('Mike', 'Lion', 5)
end

When(/^he is (\d+)$/) do |arg1|
  expect(@animal.age.to_s).to eq arg1
end

Then(/^he is old$/) do
  expect(@animal.old?).to eq true
end