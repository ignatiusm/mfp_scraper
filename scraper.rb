#!/usr/bin/env ruby

require 'nokogiri'
require 'open-uri'
require 'to_words'

def scraper
  base_url = "https://www.musicforprogramming.net/"
  doc = Nokogiri::HTML(open(base_url))

	episodes = doc.css("div#episodes a")

  length = episodes.length

  (1..length).step(1) do |l|
    url = base_url + "?" + l.to_words.gsub(/\s+/, '')
    page = Nokogiri::HTML(open(url))
    filename = page.css("#player")[0]["src"]

    if File.exist?("#{Dir.home}/Music/" + filename[/(?=music_for_programming).*/]) 
      puts "#{filename} already downloaded"
    else
      puts "downloading..."
      File.open("#{Dir.home}/Music/" + filename[/(?=music_for_programming).*/], "wb") do |file|
      file.write open(filename).read
      end
      puts "#{filename} downloaded"
    end
  end
end

scraper
