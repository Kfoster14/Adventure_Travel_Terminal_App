require_relative 'src/TravelStore'

require('rspec')


describe Travelstore do
    it 'should have a name' do
        store_name = Travelstore.new("Queensland Adventure Travel Store")
        expect(store_name.name).to eq"Queensland Adventure Travel Store"
        expect(store_name).to be_instance_of_Travelstore
    end
    it 'should be able to select an activity' do
        activity_name = "Skydiving"
        location = Cairns
        date = "21st December 2020"
        activities = Activities.new
        activities.add_activity(activity_name, location, date)
        expect(activities.get_activity().length).to be(1)
    end
    it 'should be able to add an activity to a booking' do
        activity_name = "Skydiving"
        date = "21st December 2020"
        places_left = 2
        places_booked = 2
        new_booking = Booking.new
        new_booking.add_activity(activity_name, date, places_booked)
        expect(new_booking.add_activity().length).to be(1)
    end
     it 'should display booking confirmation' do
        activity_name = "Skydiving"
        date = "21st December 2020"
        places_left = 2
        display_booking = Booking.new
        display_booking.get_booking(activity_name, date, places_left)
        expect(display_booking.get_booking)
    end
end
