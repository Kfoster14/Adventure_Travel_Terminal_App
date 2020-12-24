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
require 'yaml'
class Travelstore
    attr_reader :travelstore_name
    @@booking_number = 0

    def initialize(travelstore_name, info, new_booking)
        @travelstore_name = travelstore_name
        @activity_list = Array.new
        @activity_list = info
        @new_booking = Array.new
    end

    def name_of_store
        return @travelstore_name
    end

    def message
        customer_message = "Welcome to the #{@travelstore_name}! "
        latest_activity = "The latest addition to our activities is skydiving."
        return customer_message + latest_activity
    end

    def travelStore
        @travelstore_name
    end
   
    def actList
        @activity_list
    end

    def bookNum
        @new_booking
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
            def get_activity
                result = queensland.map {|x| x.values}
                p result
            end
            
            
        when "b"
            puts "Would you like to book an activity? (yes/no)" 
            input = gets.chomp
            if input == "yes"
                puts "Choose your state."
                puts "Select (1) for NSW"
                puts "Select (2) for QLD"
                select_state = gets.strip
                if select_state == 1
                    state_var = queensland
                else state_var = nsw
                end
                def book_new_activity
                    result2 = queensland@activity_list.values_at("key1", "key2")
                    @new_booking << result2
                    puts @new_booking
                    end
            else puts "exit app"
            end
            puts "Thank you. The details of your chosen activity are as follows: #{@new_booking}."
            puts "Your booking has been confirmed. Your booking ID number is #{@@booking_number}"   
        when "c"
            puts "Are you sure you want to cancel your booking? (yes/no)"
            answer = gets.chomp
            puts answer
            if answer == "yes"
                puts "Please enter your booking ID number."
                booking_number = gets.chomp.to_i
                puts "Your booking ID number is #{booking_number}." 
                puts "You have successfully cancelled your booking."
            else puts "exit app"
            end

        end
        
    end

    
   
    
    # def get_date(activity_name)
    #     item = @activity_list.find {|new_activity| new_activity.activity_name === activity_name}
    #     return item.date
    # end
    
    

    # def add_activity(activity_name, date, places_booked)
    #     new_booking = ActivityItem.new(activity_name, date, places_booked)
    #     @new_booking_list << new_booking
    # end

    # def make_booking(activity_name, location, date)
    #     return @new_booking_list
    # end

    # def self.booking_number
    #     @@booking_number
    # end

    # def cancel_booking(new_booking_list, booking_number)

    # end

end

queensland = Travelstore.new( "Queensland Travel Store", [{"activity"=> "Snorkling", "location" => "Cairns", "date" => "30 March"},
                                    {"activity"=> "Sky Diving", "location" => "Sunshine Coast", "date" => "15 May"},
                                    {"activity"=> "Hang Gliding", "location" => "Gold Coast", "date" => "21 July"}], "QLD321" )
  
  

nsw = Travelstore.new( "NSW Travel Store", [{"activity"=> "Bridge Climb", "location" => "Sydney", "date" => "30 April"},
                                    {"activity"=> "Hiking", "location" => "Blue Mountains", "date" => "15 September"},
                                    {"activity"=> "Kayaking", "location" => "Hawkesbury River", "date" => "21 August"}], "NSW123" )


puts queensland.travelstore_name
puts queensland.actList
puts queensland.bookNum
puts queensland.message

queensland.main_menu
















