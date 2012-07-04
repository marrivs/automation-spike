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
  sleep 4
  $b.link(:id,'login-sign-out').exists?
  end
Given /^I am at mysky page$/ do
  step %{I am on sky.com home page}
  step %{I login}
  $b.goto 'http://www.sky.com/mysky'

end
Given /^I am at shop page$/ do
  step %(I am on sky.com home page)
  step %(I login)
  $b.goto 'http://www.sky.com/shop'
end