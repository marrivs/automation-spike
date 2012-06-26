Given /^I goto wine site and login$/ do
  $browser.goto 'http://www.wineandbookclub.co.uk/'

end
When /^I enter  my dob$/ do
$browser.select_list(:name,'DOB_Day').when_present.select('14')
  $browser.select_list(:name,'DOB_Month').select('4')
  $browser.select_list(:name,'DOB_Year').when_present.select('1980')
  $browser.checkbox(:name,'remember').set
  $browser.img(:id,'ageGateSubmit').click
  sleep 5
end
Then /^I should be on home page$/ do
  $browser.link(:title,'Go to the OUR WINE  page').when_present.click
  $browser.link(:text,'WHITES').click
end
