#display the activities
#add an activity
#get a date
#display activities list

require_relative './Activityitems'

class Activities
    attr_reader :activity_name, :date
    def initialize(activity_name, date)
        @activity_name = activity_name
        @date = date
        @places_left = places_left
        @activity_list = [{activity_name: "Harbour Bridge Climb", date: "21st December 2020", places_left: 0}, {activity_name: "Rollercoaster Zip Line", date: "31st December 2020", places_left: 0},
        {activity_name: "Rainforest Canyon Adventure", date: "21st December 2020", places left: 2}, {activity_name: "Surfing at Bondi", date: "21st January 2021", places_left: 1}, {activity_name: "Hiking in the Blue Mountains", date: "14th February 2021", places_left: 10}, 
        {activity_name: "Parasailing in Manly", date: "2nd March 2021", places_left: 4}, {activity_name: "Hot Air Ballooning", date: "2nd January 2021", places_left: 12}] 
    end
    
    def add_activity(activity_name, date, places_left)
        new_activity = ActivityItem.new(activity_name, date, places_left)
        @activity_list << new_activity
    end
    
    def get_date(activity_name)
        item = @activity_list.find {|new_activity| new_activity.activity_name === activity_name}
        return item.date
    end
    
    def get_activity
        return @activity_list
    end
end



            