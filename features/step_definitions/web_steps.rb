
Given(/^the user "(.*?)" with password "(.*?)"$/) do |email, password|
  user = User.create(email: email, password: password)
  refute user.new_record?
end

When(/^I got the homepage$/) do
  visit "/"
end

When(/^I (?:click|press) "(.*?)"$/) do |with_title|
  click_link_or_button with_title
end

When "I open the page" do
  save_and_open_page
end

When(/^I fill in "(.*?)" for "(.*?)"$/) do |value, field_named|
  fill_in field_named, with: value
end

Then(/^I should see "(.*?)"$/) do |content|
  page.should have_content(content)
end

Then(/^I should not see "(.*?)"$/) do |content|
  page.should_not_have_content(content)
end