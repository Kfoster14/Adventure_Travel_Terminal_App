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
        @availability = availability
        @activity_list = [{"activity_name" => "Harbour Bridge Climb", "date" => "21st December 2020", "availabilty" => "Sold Out!"}, {"activity_name" => "Rollercoaster Zip Line", "date" => "31st December 2020", "availabilty" => "Sold Out!"},
        {"activity_name" => "Rainforest Canyon Adventure", "date" => "21st December 2020", "availabilty" => "2 places left!"}, {"activity_name" => "Surfing at Bondi", "date" => "21st January 2021", "availabilty" => "1 place left!"}, {"activity_name" => "Hiking in the Blue Mountains", "date" => "14th February 2021", "availabilty" => "New!"}, 
        {"activity_name" => "Parasailing in Manly", "date" => "2nd March 2021", "availabilty" => "4 places left!"}, {"activity_name" => "Hot Air Ballooning", "date" => "2nd January 2021", "availabilty" => "Sold Out!"}] 
    end
    def add_activity(activity_name, date)
        new_activity = ActivityItem.new(activity_name, date)
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
=begin
require 'colorize'  
    def menu
        case menu_option
        when "View adventure activities"
            puts "List of Adventure Activities:".colorize(:color => :blue, :background => :white)
            sleep(2)
            activity_list = []

            result = activity_list.map {|x| x.values}
            result2 = result.join(", ")
            p result2

            Brisbane = [{"activity_name" => "Story Bridge Climb", "date" => "21st December 2020"}, {"activity_name" => "Kangaroo Point Rock Climbing", "date" => "31st December 2020"}, {"activity_name" => "Night Kayaking at Moreton Island", "date" => "21st December 2021"}, {"activity_name" => "Whale Watching at North Stradbroke Island", "date" => "3rd December 2020", "availabilty" => "Sold Out!"},