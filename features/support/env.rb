require 'rubygems'
require 'watir-webdriver'
require 'rspec'

$browser = Watir::Browser.new :chrome
at_exit do
#$browser.close
end
