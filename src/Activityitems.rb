#Attributes: Activity name and date
#Actions: Display activity, get date
class Activityitems
    attr_reader :date
    def initialize(activity_name, date)
        @activity_name = activity_name
        @date = date
    end

end