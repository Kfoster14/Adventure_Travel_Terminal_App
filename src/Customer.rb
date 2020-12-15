# For the Adventure Travel App, the following classes are needed: Customer, Activities, City, Booking, Cancellation
# Customer attributes: first name, last name, home address, email address, customer type
# Customer actions are: view activity list, book an activity, cancel an activity, exit app

require_relative("./travelstore.rb")

@@booking_number = 0
class Customer
    attr_reader first_name, last_name, home_address, email_address, customer_type 
    def initialize(customer_details)
        @first_name = first_name
        @last_name = last_name
        @home_address = home_address
        @email_address = email_address
        @customer_type = customer_type
        @activities_array = []
        @@booking_number += 1
    end
    
    puts "List of activities"
    activities = [{"activity_name" => "Harbour Bridge Climb", "date" => "21st December 2020"}, {"activity_name" => "Rollercoaster zip line", "date" => "31st December 2020", "availabilty" => "Sold Out!"},
                {"activity_name" => "Rainforest Canyon Adventure", "date" => "21st December 2020"}, {"activity_name" => "Surfing at Bondi", "date" => "21st January 2021"}, {"activity_name" => "Hiking in the Blue Mountains", "date" => "14th February 2021"}, 
                {"activity_name" => "Parasailing in Manly", "date" => "2nd March 2021"}, {"activity_name" => "Hot Air Ballooning", "date" => "2nd January 2021"}]

    result = activities.map {|x| x.values}
    result2 = result.join(", ")
    p result2
    
    def book_activity(activity_name)
        puts "Would you like to book an activity? (yes/no)" 
        input = gets.chomp    
        @activities_array << activity_name
        puts "Thank you #{@first_name}. The details of your chosen activity are as follows: #{@activities_array}."
        puts "Your booking has been confirmed. Your booking number is #{@@booking_number}"
    end

    def cancel_activity
        puts "Are you sure you want to cancel your booking? (yes/no)"
        answer = gets.chomp
        puts answer
        if answer == "yes"
            puts "Please enter your booking ID number."
            booking_number = gets.chomp.to_i
            puts booking_number
        else 
    end

    def exit_app
        puts "Are you sure you want to exit the Adventure Travel app? (yes/no)"
        answer2 =gets.chomp
        puts answer2
    end


    def to_s
        customer_message = "Welcome to the Adventure Travel App #{@first_name}!"
        latest_activity = "The latest addition to our activities is skydiving"
        return customer_message + latest_activity
    end
end

Customer.new()
    
     
    
    
