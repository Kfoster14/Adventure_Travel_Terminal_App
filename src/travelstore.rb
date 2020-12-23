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

require_relative './Activities'
require_relative './Activityitems'
require_relative './Booking'

class Travelstore
    attr_reader :travelstore_name
    
    def initialize(travelstore_name, activity_list, main_menu)
        @travelstore_name = travelstore_name
        @activity_list = Activities.new
        @main_menu = main_menu
    end

    def name_of_store
        return @travelstore_name
    end

    def main_menu
        require 'colorize' 
        puts "Welcome to the Main Menu.".colorize(:color => :blue, :background => :white)       
        puts "Please choose from the options below:" 
        puts "Select (a) to view adventure activities"
        puts "Select (b) to book an adventure"
        puts "Select (c) to cancel your booking"
        select_option = gets.strip

        
        case select_option
        when "a"
            puts "View our list of Adventure Activities:".colorize(:color => :blue, :background => :white)
            sleep(2)
            result = activity_list.map {|x| x.values}
            result2 = result.join(", ")
            p result2
        when "b"
            puts "Would you like to book an activity? (yes/no)" 
            input = gets.chomp
            if input == "yes"
            puts "Choose your activity."
            
            else puts "exit app"
            end
            puts "Thank you #{@first_name}. The details of your chosen activity are as follows: #{@new_booking_list}."
            puts "Your booking has been confirmed. Your booking ID number is #{@@booking_number}"   
        when "c"
            puts "Are you sure you want to cancel your booking? (yes/no)"
            answer = gets.chomp
            puts answer
            if answer == "yes"
            puts "Please enter your booking ID number."
            booking_number = gets.chomp.to_i
            puts booking_number
            else puts "exit app"
            end

        end
        
    end


end





















