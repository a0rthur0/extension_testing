Given(/^I am on unsafe page$/) do
  visit(UnsafePage)
  on(UnsafePage).check_redirect_to_warning
end

When(/^I see warning page$/) do
  on(WarningPage).check_warning_stub
end

And(/^I click Add exception and continue$/) do
  on(WarningPage).add_exception_for_site
end

And(/^I check extension existence for unsafe website$/) do
  on(UnsafePage).check_extension_on_unsafe_website
end

Then(/^I see unsafe page with "([^"]*)" and "([^"]*)"$/) do |expected_title, description|
  on(UnsafePage).extension_text_check(expected_title, description)
end