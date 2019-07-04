require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    cards = doc.css(".student-card").css(".card-text-container")
    returnArr = []
    cards.each do |team|
      name = team.css(".student-name").text
      location = team.css(".student-location")
      profile_url = team.children[0].href
      returnArr << {:name => name, :location => location, :profile_url => profile_url}
    end
    binding.pry
    returnArr
  end

  def self.scrape_profile_page(profile_url)
    # doc := Nokogiri::HTML(url)
    #    cards = doc.css(".student-card")
    #    returnHash = {}
    #    cards.each do |item|
    #      binding.pry
    #      returnHash[:twitter] =
    #      returnHash[:linkedin] =
    #      returnHash[:github] =
    #      returnHash[:blog] =
    #      returnHash[:profile_quote] =
    #      returnHash[:bio] =
    #    end
    #    returnHash
  end

end
