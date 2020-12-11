# For the Adventure Travel App, the following classes are needed: Customer, Activities, City, Price, Booking, Cancellation
class Customer
    def initialize (customer_details)
        @first_name = customer_details[:first_name]
        @last_name = customer_details[:last_name]
        @home_address = customer_details[:home_address]
        @email_address = customer_details[:email_address]
