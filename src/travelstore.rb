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

require_relative '../Customer.rb'
require_relative '../Activities.rb'
require_relative '../Booking.rb'
require_relative '../Activityitems.rb'

class Travelstore
    attr_reader :activity_list, :travelstore_name
    def initialize(travelstore_name, activity_list)
        @travelstore_name = travelstore_name
        @activity_list = []
        @main_menu = main_menu
    end

    def name_of_store
        return @travelstore_name
    end
end
#Display welcome message
=begin
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




















