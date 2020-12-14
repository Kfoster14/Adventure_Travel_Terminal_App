#running a script makes it easier for someone else to use the app 

if ARGV.length > 0
    name = ARGV[0]
else    
    print "What's your name?"
    name = gets.chomp
end
puts "Hi, #{name}"

def main_menu
    puts "Welcome to the main menu. Please choose from the options below."
    puts 


def activity_options
    activities = ["Brisbane",
    {activity_name: "Story Bridge Climb", date: "3rd January 2021", disabled: "(sold out)"}, {activity_name: "Kangaroo Point Rock Climbing", date: "4th February 2021"}, {activity_name: "Kayaking on Bremer River, date: "}
    "Sydney",
    {activity_name: "Sydney Harbour Bridge Climb", date: "31st December 2020", disabled: "(sold out)"}, {activity_name: "Surfing at Bondi", date: "23rd January 2021"}, {activity_name: "Hiking in Blue Mountains", date: "2nd January 2021"}
    ]
end
