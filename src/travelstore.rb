#running a script makes it easier for someone else to use the app 
=begin
if ARGV.length > 0
    name = ARGV[0]
else    
    print "What's your name?"
    name = gets.chomp
end
puts "Hi, #{name}"
=end

require_relative("./Customer.rb")

class Travelstore
    attr_reader :activity_name
    def initialize(travelstore_name, activity_list)
        @travelstore_name = travelstore_name
        @activity_list = activity_list
        @booking = 
    end

    
end
#Display welcome message
require 'colorize' 
puts "Welcome to the Main Menu.".colorize(:color => :blue, :background => :white)
   
require "tty-prompt"

prompt = TTY::Prompt.new(symbols: {marker: ">"})
#Display main menu    
prompt.select("Please choose from the options below:") do |menu|
    menu.enum "."
      
    menu.choice "View adventure activities", 1
    menu.choice "Book an adventure", 2
    menu.choice "Cancel your booking", 3
    menu.choice "Exit the Travel App", 4
end 


                
        when "Book an adventure"
            puts "Option 2 - if you are an existing member"
        when "Cancel your booking"
            puts "Option 3 - for cancelling membership"
        when "Cancel your booking"
            puts "Exiting from the Library App ..."
        
        else
            puts "Please choose from the options: 1, 2, 3 OR 4"
    
        end   
    end




















