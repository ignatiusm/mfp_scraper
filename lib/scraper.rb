require 'httparty'
require 'nokogiri'
require 'open-uri'

class Scraper

attr_accessor :parse_page

	def initialize
		doc = HTTParty.get("https://musicforprogramming.net/")
		parse_page ||= Nokogiri::HTML(doc)
	end

	episodes = parse_page.css("div#episodes").children.map{ |link| link.values}

puts episodes
end
