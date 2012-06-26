
Given /^Iam on sky ID login page$/ do
  $browser.goto'http://www.sky.com/myaccount'
end
When /^I enter by user details$/ do
  $browser.text_field(:id,'username').set('testtest27')
  $browser.text_field(:id,'password').set('test1234')
  $browser.checkbox(:id,'rememberCheckbox').set
  $browser.button(:id,'signinButton').click
end
When /^I goto my account page$/ do
  $browser.url.should == 'https://myaccount.sky.com/'
end
Then /^I should see my bill$/ do
  $browser.button(:id,'view_your_bill').exists?
end