# Music For Programming scraper

I really like the website [musicForProgramming](https://musicforprogramming.net/).
I wanted to write a small scraping script for three reasons:

1. I would like to have access to the excellent music offline;
2. I prefer to control my music via [cmus](https://cmus.github.io/);
3. I wanted to learn how to write a small scraping script in Ruby.

As there are occasionally new tracks added to the site, I have set up a cron job to run this script periodically.

To run:

- Download ruby,
- clone this repository,
- cd into the mfp_scraper directory,
- Install the required Ruby Gems
    - [Nokogiri](https://rubygems.org/gems/nokogiri)
    - [to_words](https://rubygems.org/gems/to_words)
- from your terminal enter `./scraper.rb` to execute the script.

**NOTE - This script will download a lot of music...at least 6.7 GB**
