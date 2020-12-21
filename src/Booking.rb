class Booking
    attr_reader :activity_name, :date
    def initialize(activity_name, date)
        @activity_name = activity_name
        @date = date
        @new_booking_list = [] 
    end

    def add_activity(activity_name, date)
        new_booking = ActivityItem.new(activity_name, date)
        @new_booking_list << new_booking
    end

    def get_booking(activity_name, date)
        return @new_booking_list
    end
end