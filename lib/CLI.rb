class CLI
    
    def call
        greeting
        CigarScraper.new.run
        options
    end
    
    def greeting
        puts "Welcome to CigarFreaks! Here is a list of the top ten most highly valued cigars. If you would like a more in-depth look at one of these beauties, simply type in the number associated with their rank. If you'd like to quit the program, just type in 'exit'.".black
    end
    
    def powermove(input)
        c = CigarScraper.new 
        h = c.hyperlink(input.to_i - 1)
        ci = CigarScraper.new.scrape_details(h)
         
        puts "TASTING NOTE:".blue
        puts "#{ci.tasting_note}"
        
        puts "- - - - - -".red
        
        puts "BODY:".blue
        puts "#{ci.body}"
        
        puts "- - - - - -".red
        
        puts "SIZE:".blue
        puts "#{ci.size}"
        
        puts "- - - - - -".red
        
        puts "RING GAUGE:".blue
        puts "#{ci.ring_gauge}"
        
        puts "- - - - - -".red
        
        puts "LENGTH:".blue
        puts "#{ci.length}"
        
        puts "- - - - - -".red
        
        puts "FILLER:".blue
        puts "#{ci.filler}"
        
        puts "- - - - - -".red
        
        puts "BINDER:".blue
        puts "#{ci.binder}"
        
        puts "- - - - - -".red
        
        puts "WRAPPER:".blue
        puts "#{ci.wrapper}"
        
        puts "- - - - - -".red
        
        puts "PRICE:".blue
        puts "#{ci.price}"
        
        puts "- - - - - -".red
        
    end
    
    def options 
        puts "- - - - - -".red
        puts "Which cigar would you like to look at? To quit, type 'exit'"
        input = gets.strip
        input = input.downcase
        
        if input == "1"
            powermove(input)
            options
            
        elsif input == "2"
            powermove(input)
            options
            
        elsif input == "3"
            powermove(input)
            options
            
        elsif input == "4"
            powermove(input)
            options
            
        elsif input == "5"
            powermove(input)
            options
            
        elsif input == "6"
            powermove(input)
            options
            
        elsif input == "7"
            powermove(input)
            options
            
        elsif input == "8"
            powermove(input)
            options
            
        elsif input == "9"
            powermove(input)
            options
            
        elsif input == "10"
            powermove(input)
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