require 'rubygems'
require 'watir-webdriver'
require 'rspec'

$b = Watir::Browser.new :chrome

Before do
  $b.cookies.clear
end
After do
 puts 'sirisha'
end
at_exit do
$b.close
end
