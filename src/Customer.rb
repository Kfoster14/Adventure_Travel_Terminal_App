# For the Adventure Travel App, the following classes are needed: Customer, Activities, City, Price, Booking, Cancellation
# Customer attributes: first name, last name, home address, email address

class Customer
    attr_reader :first_name, :last_name, :home_address, :email_address, 
    def initialize (customer_details)
        @first_name = customer_details[:first_name]
        @last_name = customer_details[:last_name]
        @home_address = customer_details[:home_address]
        @email_address = customer_details[:email_address]
        @activities_array = []
    def view_activities
    
    end

    def book_activity

       return "Your booking number is #{@@booking_number}"

    end

    def cancel_activity

    end

    def exit_app

    end


    def to_s
        return "Welcome to the Adventure Travel App #{@first_name} #{@last_name}! 
    end
