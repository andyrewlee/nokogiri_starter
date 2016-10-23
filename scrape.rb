require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open('http://www.cnn.com'))
headlines = page.css('.cd__headline-text')

headlines.each do |headline|
  puts headline.content
end
