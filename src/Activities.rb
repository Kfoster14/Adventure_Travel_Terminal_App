#display the activities
#add an activity
#get a date
#display activities list

require_relative './Activityitems'

class Activities
    attr_reader :activity_name, :date, :location
    def initialize(activity_name, date, places_left)
        @activity_name = activity_name
        @date = date
        @activity_list = Hash.new{0}
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

    def view_activities
        puts "Activities Menu"
        result = @ActivityItem.each {|activity| puts activity}
        return result
    end
end

item = Activities.new
item.add_activity{"skydiving", "3rd April", "Sydney"}