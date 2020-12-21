class Booking
    attr_reader :activity_name, :date, :places_left, :places_booked
    @@booking_number = 0

    def initialize(activity_name, date, places_left, places_booked)
        @activity_name = activity_name
        @date = date
        @places_left = places_left
        @places_booked = places_booked
        @@booking_number += 1
        @new_booking_list = []
    end

    def add_activity(activity_name, date, places_booked)
        new_booking = ActivityItem.new(activity_name, date, places_booked)
        @new_booking_list << new_booking
    end

    def get_booking(activity_name, date, places_booked)
        return @new_booking_list
    end

    def self.booking_number
        @@booking_number
    end

    def calc_places
        remaining_places = places_left - places_booked
        return remaining_places
    end


end