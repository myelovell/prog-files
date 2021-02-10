#2021-02-09, web-crawler, fetch and display website data

require 'nokogiri'
require 'httparty'

document = HTTParty.get('https://www.partymanworld.co.uk/jokes-generator/')
html = Nokogiri::HTML(document.body)
jokes = html.css('.medium')
jokes.each do |joke|
    puts "#{joke.text.strip}"
    sleep 4
    puts "Ready for the next one?"
    sleep 1
end
