class Activities
    attr_reader :activity_name
    def initialize(activity_list)
        @activity_list = activity_list
        
       
    end
#display the activities
#add an activity
#get a date

end

require 'colorize'  
    def menu
        case menu_option
        when "View adventure activities"
            puts "List of Adventure Activities:".colorize(:color => :blue, :background => :white)
            sleep(2)
            activity_list = [{"activity_name" => "Harbour Bridge Climb", "date" => "21st December 2020"}, {"activity_name" => "2. Rollercoaster Zip Line", "date" => "31st December 2020", "availabilty" => "Sold Out!"},
            {"activity_name" => "3. Rainforest Canyon Adventure", "date" => "21st December 2020"}, {"activity_name" => "4. Surfing at Bondi", "date" => "21st January 2021"}, {"activity_name" => "5. Hiking in the Blue Mountains", "date" => "14th February 2021"}, 
            {"activity_name" => "6. Parasailing in Manly", "date" => "2nd March 2021"}, {"activity_name" => "7. Hot Air Ballooning", "date" => "2nd January 2021"}]

            result = activities.map {|x| x.values}
            result2 = result.join(", ")
            p result2

            Brisbane = [{"activity_name" => "Story Bridge Climb", "date" => "21st December 2020"}, {"activity_name" => "Kangaroo Point Rock Climbing", "date" => "31st December 2020"}, {"activity_name" => "Night Kayaking at Moreton Island", "date" => "21st December 2021"}, {"activity_name" => "Whale Watching at North Stradbroke Island", "date" => "3rd December 2020", "availabilty" => "Sold Out!"},