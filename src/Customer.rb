# For the Adventure Travel App, the following classes are needed: Customer, Activities, City, Booking, Cancellation
# Customer attributes: first name, last name, home address, email address
# Customer actions are: view activity list, book an activity, cancel an activity, exit app
@@booking_number = 0
class Customer
    attr_reader :first_name, :last_name, :home_address, :email_address, :customer_type 
    def initialize(customer_details)
        @first_name = customer_details[:first_name]
        @last_name = customer_details[:last_name]
        @home_address = customer_details[:home_address]
        @email_address = customer_details[:email_address]
        @customer_type = customer_details[:customer_type]
        @activities_array = []
        @special_activities_array = []
        @@booking_number += 1
    
    
    
    def view_activities_list()
        
    end

    def enter_details
        require "tty-prompt"
        prompt = TTY::Prompt.new
        prompt.yes?("Would you like to book an adventure?")
        if prompt.yes? == true
            customer_details = prompt.collect do
                key(:first_name).ask("What is your first name")
          
                key(:last_name).ask("What is your last name")
          
                key(:home_address) do
                    key(:street).ask("Please enter your street name", required: true)
                    key(:city).ask("Please enter your suburb")
                    key(:postcode).ask("Please enter your post code", validate: /\A\d{3}\Z/)
                end
            end
            prompt.ask("What is your email address?") do |q|
                q.validate(/\A\w+@\w+\.\w+\Z/, "Invalid email address")
              end
        else 
      end
      p enter_details

   
    def book_activity(activity_name)
        @activities_array << {activity: activity_name}
        puts "Thank you #{@first_name}. The details of your chosen activity are as follows: #{@activities_array}."
        puts "Your booking has been confirmed. Your booking number is #{@@booking_number}"
    end

    def cancel_activity
        puts "Are you sure you want to cancel your booking? (yes/no)"
        answer = gets.chomp
        puts answer
        if answer = "yes"
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
        latest_activity = "The latest addition to our activities is "
        return customer_message + latest_activity
    end

end

non_member = Customer.new()
