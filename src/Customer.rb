# For the Adventure Travel App, the following classes are needed: Customer, Activities, City, Booking, Cancellation
# Customer attributes: first name, last name, home address, email address
# Customer actions are: view activity list, book an activity, cancel an activity, exit app

class Customer
    attr_reader :first_name, :last_name, :home_address, :email_address 
    def initialize(customer_details)
        @first_name = customer_details[:first_name]
        @last_name = customer_details[:last_name]
        @home_address = customer_details[:home_address]
        @email_address = customer_details[:email_address]
        @activities_array = []
    
    def view_activities()
        
    end

    def enter_details
        require "tty-prompt"
        prompt = TTY::Prompt.new
        prompt.yes?("Would you like to book an adventure?")
        if prompt.yes? == true
            result = prompt.collect do
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
    
    def book_activity(activity_name)
        @activities_array << activity_name
        
        return "Your booking number is #{@@booking_number}"

    end

    def cancel_activity

    end

    def exit_app

    end


    def to_s
        customer_message = "Welcome to the Adventure Travel App #{@first_name}!"
        latest_activity = 
        return  
    end
