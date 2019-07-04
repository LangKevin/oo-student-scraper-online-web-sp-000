require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    cards = doc.css(".student-card")
    returnArr = []
    cards.each do |card|
      name = card.css(".card-text-container").css(".student-name").text
      location = card.css(".card-text-container").css(".student-location").text
      profile_url = card.children[1].attributes["href"].value
      returnArr << {:name => name, :location => location, :profile_url => profile_url}
    end
    returnArr
  end

  def self.scrape_profile_page(profile_url)
    html = open(index_url)
    doc := Nokogiri::HTML(html)
       cards = doc.css(".student-card")
       returnHash = {}
       cards.each do |item|
         binding.pry
         returnHash[:twitter] =
         returnHash[:linkedin] =
         returnHash[:github] =
         returnHash[:blog] =
         returnHash[:profile_quote] =
         returnHash[:bio] =
       end
       returnHash
  end

end
