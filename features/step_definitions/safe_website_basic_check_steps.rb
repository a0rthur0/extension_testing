Given(/^I am on a given safe page$/) do
  visit(SafePage)
end

And(/^I see that extension visible and click on it$/) do
  on(SafePage).check_extension_on_safe_website
end

Then(/^I see safe page with "([^"]*)" and "([^"]*)"$/) do |title, description|
  on(SafePage).extension_status_check(title, description)
end