#Attributes: Activity name and date
#Actions: Display activity, get date
class ActivityItem
    attr_reader :activity_name, :date, :places_left
    
    def initialize(activity_name, date, places_left)
        @activity_name = activity_name
        @date = date
        @places_left = places_left
    end

    def to_s
        return "#{@activity_name} ... #{@date} ... #{@places_left}"
    end

end