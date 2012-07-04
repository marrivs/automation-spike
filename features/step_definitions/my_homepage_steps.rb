Given /^I am on sky.com home page$/ do
  $b.goto 'http://www.sky.com'
end
When /^I login$/ do
  $b.link(:id,'login-sign-in').click
  $b.text_field(:id,'username').set('testtest27')
  $b.text_field(:id,'password').set('test1234')
  $b.button(:id,'signinButton').click
end
Then /^I should be logged in successfully$/ do
  $b.link(:id,'login-sign-out').exists?
  end