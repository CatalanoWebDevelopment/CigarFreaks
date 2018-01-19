require_relative 'CigarFreaksEnvironment.rb'

class Cigars
    
    def call
        greeting
        CigarScraper.new.run
        options
    end
    
    def greeting
        puts "Welcome to CigarFreaks! Here is a list of the top ten most highly valued cigars. If you would like a more in-depth look at one of these beauties, simply type in the number associated with their rank. If you'd like to quit the program, just type in 'exit'.".black
    end
    
    def options 
        puts "- - - - - -".red
        puts "Which cigar would you like to look at? To quit, type 'exit'"
        input = gets.strip
        input = input.downcase
        
        if input == "1"
#            puts the code for cigar 1
            options
        elsif input == "2"
            options
        elsif input == "3"
            options
        elsif input == "4"
            options
        elsif input == "5"
            options
        elsif input == "6"
            options
        elsif input == "7"
            options
        elsif input == "8"
            options
        elsif input == "9"
            options
        elsif input == "10"
            options
        elsif input == "exit"
            goodbye
        else
            puts "I'm sorry; we do not understand what you want! Please try a valid input between 1 and 10, or type 'exit' to quit the program. Happy smoking!"
            options
        end
    end
    
    def goodbye
        puts "Thank you for using CigarFreaks for your daily deals! We look forward to seeing you next time. Happy smoking <3"
    end
    
end