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
    attr_reader :activity_list
    attr_reader :new_booking
    @@booking_number = 0

    def initialize(travelstore_name, info, new_booking)
        @travelstore_name = travelstore_name
        @activity_list = Array.new
        @activity_list = info
        @new_booking = Array.new
        @new_booking = new_booking
    end

    # def self.name_of_store
    #     return @travelstore_name
    # end

    def message

        customer_message = "Welcome to the #{travelstore_name}!"
        latest_activity = " The latest addition to our activities is skydiving!"
        puts customer_message + latest_activity

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

              list = activity_list.map {|x| x.values[0]}
              puts list

        when "b"
            puts "Available activities:"
            list = activity_list.map {|x| x.values[0]}
            puts list
            puts "Would you like to book an activity? (yes/no)"
            input = gets.chomp
            if input == "yes"
                puts "Please choose your activity"
                act_input = gets.chomp
                puts act_input

                #get the other values from the relevant hash
                    def getVal(act, output)
                        booking =  activity_list.find{|hash| hash["activity"] == act}.fetch(output)
                        return booking
                    end
                  locVal = getVal(act_input, "location")
                  dateVal = getVal(act_input, "date")

                  #get the relevant booking number

                  indVal1 = activity_list.index {|h| h["activity"] == act_input}
                  indVal1 = indVal1.to_i
                  booking_no = new_booking.fetch(indVal1)

                puts "Thank you. The details of your chosen activity are as follows:"
                puts "Activity: #{act_input}"
                puts "Location: #{locVal}"
                puts "Date: #{dateVal}"
                puts "Your booking has been confirmed. Your booking ID number is #{booking_no}"
                puts "Thank you for your booking. Now exiting the app."

            else puts "Exiting the Travel Store Application... We hope to see you again soon!"
            end


        when "c"
            puts "Are you sure you want to cancel your booking? (yes/no)"
            answer = gets.chomp

            if answer == "yes"
                puts "Please enter your booking ID number:"
                booking_number = gets.chomp
                    #get index number from booking booking_number
                  indVal2 = new_booking.index(booking_number)

                  details = activity_list.fetch(indVal2)

                  act_name = details["activity"]
                  act_loc =  details["location"]
                  act_date = details["date"]


                puts "Your booking ID number is #{booking_number}."
                puts "You have successfully cancelled your booking."
                puts "Details of your cancelled booking are listed below:"
                puts "Activity: #{act_name}"
                puts "Location: #{act_loc}"
                puts "Date: #{act_date}"

            else puts "Now exiting the Travel Store Application...We hope to see you again soon!"

            end
        end
    end

end

qld = Travelstore.new( "Queensland Adventure Travel Store", [{"activity"=> "Snorkling", "location" => "Cairns", "date" => "30 March"},
                                    {"activity"=> "Sky Diving", "location" => "Sunshine Coast", "date" => "15 May"},
                                    {"activity"=> "Hang Gliding", "location" => "Gold Coast", "date" => "21 July"},
                                    {"activity"=> "Bridge Climb", "location" => "Brisbane","date" => "30 April"},
                                    {"activity"=> "Hiking", "location" => "Glass House Mountains", "date" => "15 September"},
                                    {"activity"=> "Kayaking", "location" => "Noosa River", "date" => "21 August"}],
                                    ["QLD123","QLD124","QLD125","QLD126","QLD127","QLD128"] )







qld.message
qld.main_menu
