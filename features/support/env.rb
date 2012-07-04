require 'rubygems'
require 'watir-webdriver'
require 'rspec'

$b = Watir::Browser.new :chrome
at_exit do
#$browser.close
end
