require_relative 'CigarFreaksEnvironment.rb'

class CigarScraper
    attr_accessor :name, :price, :points, :description
    
    def initialize(url)
        @url = url
        Nokogiri::HTML(open(url))
    end
    
    def scrape_index(url)
        url = "https://www.cigaraficionado.com/ratingsandreviews"
        @doc = Nokogiri::HTML(open(url))
    end
    
end