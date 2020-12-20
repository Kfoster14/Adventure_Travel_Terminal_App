# For the Adventure Travel App, the following classes are needed: Customer, Activities, City, Booking, Cancellation
# Customer attributes: first name, last name, home address, email address, customer type
# Customer actions are: view activity list, book an activity, cancel an activity, exit app

#require_relative("./TravelStore.rb")

class Customer
    attr_accessor :first_name, :last_name, :home_address, :email_address
    @@booking_number = 0
    
    def initialize(first_name, last_name, home_address, email_address)
        @first_name = first_name
        @last_name = last_name
        @home_address = home_address
        @email_address = email_address
        @customer_type = []
        @activities_array = []
        @@booking_number += 1
    end
    
    def self.booking_number
        @@booking_number
    end

    
    def book_activity(activities)           
        @activities_array << (activities)
    end

    def cancel_activity
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

    def exit_app
        puts "Are you sure you want to exit the Adventure Travel app? (yes/no)"
        answer2 =gets.chomp
        puts answer2
    end


    def to_s
        customer_message = "Welcome to the Adventure Travel App #{@first_name}! "
        latest_activity = "The latest addition to our activities is skydiving."
        return customer_message + latest_activity
    end
end

customer1 = Customer.new("Kelley", "Foster", "52 Taunton Circuit", "kelley@gmail.com")
puts customer1
    
puts "Would you like to book an activity #{@first_name}? (yes/no)" 
    input = gets.chomp
    if input == "yes"
        puts "Choose your activity."
        activities = gets.strip
        customer1.book_activity(activities)
    else puts "exit app"
    end
puts "Thank you #{@first_name}. The details of your chosen activity are as follows: #{@activities_array}."
puts "Your booking has been confirmed. Your booking ID number is #{@@booking_number}"   
