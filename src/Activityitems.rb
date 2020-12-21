#Attributes: Activity name and date
#Actions: Display activity, get date
class ActivityItem
    attr_reader :activity_name, :date
    
    def initialize(activity_name, date)
        @activity_name = activity_name
        @date = date
        @availability = availability
    end

end