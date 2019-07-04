require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc := Nokogiri::HTML(index_url)
    cards = doc.css(".student-card")
    returnArr = []
    cards.each do |item|
      binding.pry
      returnArr << {:name => item}
    end
  end

  def self.scrape_profile_page(profile_url)
    doc := Nokogiri::HTML(url)
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
