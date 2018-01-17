require_relative 'CigarFreaksEnvironment.rb'

class CigarScraper
    attr_accessor :doc
    
    def initialize
        url = "https://www.cigaraficionado.com/ratingsandreviews"
        @doc ||= Nokogiri::HTML(open(url))
    end
    
    
    def get_names
        names = @doc.css("div.cigar-teaser_wrapper h3").map {|name| name.text}.compact
    end
    
    def get_points
        counter = 10
        while counter <= 10 do
            counter += 1
             points = @doc.css("div.cigar-teaser_wrapper div.cigar-teaser_info div.cigar-teaser_score").map {|points| points.text}.compact            
        end
        points
    end
    
    def run
        scraper = CigarScraper.new
        names = scraper.get_names
        points = scraper.get_points

        (0...names.size).each do |index|
            puts "- - - - - -".red
            puts "#{names[index]} | Points: #{points[index]}".blue
        end
    end
    
end