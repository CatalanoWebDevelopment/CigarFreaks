require_relative 'CigarFreaksEnvironment.rb'

class Cigars
    
    def call
        greeting
        CigarScraper.new.run
        options
    end
    
    def greeting
        puts "Welcome to CigarFreaks! Here is a list of the top ten most highly valued cigars. If you would like a more in-depth look at one of these beauties, simply type in the number associated with their rank. If you'd like to quit the program, just type in 'exit'. Thanks for using CigarFreaks for your latest deals!".black
    end
end