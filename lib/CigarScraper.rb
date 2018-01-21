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
    
    def self.hyperlink
        prefix = "https://www.cigaraficionado.com"
        suffix = @doc.search("div.cigar-teaser_wrapper a[href]").attribute("href").value
        
        puts "#{prefix}#{suffix}"
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
    
    def scrape_details(url)
        @d = Nokogiri::HTML(open(url))
        params = {}
        
        specs = @d.search("tbody td").map do |info|
            info.text
        end
        
        params[:tasting_note] = specs[0].strip
        params[:body] = specs[2].strip
        params[:size] = specs[4].strip
        params[:ring_gauge] = specs[6].strip
        params[:length] = specs[8].strip
        params[:filler] = specs[10].strip
        params[:binder] = specs[12].strip
        params[:wrapper] = specs[14].strip
        params[:price] = specs[18].strip
        
        c = Cigars.new(params)
        
        puts "TASTING NOTE:".blue
        puts "#{c.tasting_note}"
        
        puts "- - - - - -".red
        
        puts "BODY:".blue
        puts "#{c.body}"
        
        puts "- - - - - -".red
        
        puts "SIZE:".blue
        puts "#{c.size}"
        
        puts "- - - - - -".red
        
        puts "RING GAUGE:".blue
        puts "#{c.ring_gauge}"
        
        puts "- - - - - -".red
        
        puts "LENGTH:".blue
        puts "#{c.length}"
        
        puts "- - - - - -".red
        
        puts "FILLER:".blue
        puts "#{c.filler}"
        
        puts "- - - - - -".red
        
        puts "BINDER:".blue
        puts "#{c.binder}"
        
        puts "- - - - - -".red
        
        puts "WRAPPER:".blue
        puts "#{c.wrapper}"
        
        puts "- - - - - -".red
        
        puts "PRICE:".blue
        puts "#{c.price}"
        
        puts "- - - - - -".red
        
    end
    
end