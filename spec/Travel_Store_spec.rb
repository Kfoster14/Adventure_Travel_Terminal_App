require_relative 'src/TravelStore'
require_relative 'src/Activities'
require_relative 'src/Booking'
require_relative 'src/Activityitems'

describe ActivityItem do
    it 'should return the date of the activity' do
        activity_name = "Skydiving"
        date = "21st December 2020"
        Activityitems = ActivityItem.new(activity_name, date)
        expect(Activityitems.date).to eq(date)
    end
    it 'should return the name of the activity' do
        activity_name = "Skydiving"
        date = "21st December 2020"
        Activityitems = ActivityItem.new(activity_name, date)
        expect(Activityitems.activity_name).to eq(activity_name)
    end
end

describe Activities do
    it "should be able to get an activity's date" do
        activity_name = "Skydiving"
        date = "21st December 2020"
        activities = Activities.new
        activities.add_activity(activity_name, date)
        expect(activities.get_date(activity_name)).to eq(date)
    end
    it 'should be able to add an activity' do
        activity_name = "Skydiving"
        date = "21st December 2020"
        activities = Activities.new
        activities.add_activity(activity_name, date)
        expect(activities.get_activity().length).to be(1)
    end
    it 'should be able to get the availability of an activity' do
        activity_name = "Skydiving"
        date = "21st December 2020"
    end
end 

describe Booking do
    it 'should be able to add an activity to a booking' do
        activity_name = "Skydiving"
        date = "21st December 2020"
        new_booking = Booking.new
        new_booking.add_activity(activity_name, date)
        expect(new_booking.add_activity().length).to be(1)
    end
    it 'should display booking activity' do
        activity_name = "Skydiving"
        date = "21st December 2020"
        display_booking = Booking.new
        display_booking.get_booking(activity_name, date)
        expect(display_booking.get_booking)
    end
end

describe Travelstore do
    it 'should have a name' do
        store_name = Travelstore.new("Adrenalin Adventures")
        expect(store_name.name).to eq"Adrenalin Adventures"
        expect(store_name).to be_instance_of_Travelstore
    end
end
