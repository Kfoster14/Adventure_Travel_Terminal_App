#running a script makes it easier for someone else to use the app 
=begin
if ARGV.length > 0
    name = ARGV[0]
else    
    print "What's your name?"
    name = gets.chomp
end
puts "Hi, #{name}"
=end

require_relative("./Customer.rb")

travel_store = []
# Add a customer to the Travel Store
travel_store << Customer.new()




require 'colorize' 
puts "Welcome to the main menu.".colorize(:color => :blue, :background => :white)
   
require "tty-prompt"

prompt = TTY::Prompt.new(symbols: {marker: ">"})
    
prompt.select("Please choose from the options below:") do |menu|
    menu.enum "."
      
    menu.choice "Adventure activities", 1
    menu.choice "Book an adventure", 2
    menu.choice "Cancel your booking", 3
    menu.choice "Exit the Travel App", 4
end 

require 'colorize'  
case menu_option
  when "Adventure activities"
      puts "List of Adventure Activities:".colorize(:color => :blue, :background => :white)
      create_member     
  when "2"
      # Invoke a method called existing_member
      puts "Option 2 - if you are an existing member"
  when "3"
      puts "Option 3 - for cancelling membership"
  when "4"
      puts "Exiting from the Library App ..."
      break
  else
      puts "Please choose from the options: 1, 2, 3 OR 4"
      next
end # end of case statement





Brisbane = [{"activity_name" => "Story Bridge Climb", "date" => "21st December 2020"}, {"activity_name" => "Kangaroo Point Rock Climbing", "date" => "31st December 2020"}, {"activity_name" => "Night Kayaking at Moreton Island", "date" => "21st December 2021"}, {"activity_name" => "Whale Watching at North Stradbroke Island", "date" => "3rd December 2020", "availabilty" => "Sold Out!"},
{:activity_name => "Kayaking on Bremer River", "date" => "21st December 2020"}, {"activity_name" => "Surfing at Moolloolaba", "date" => "21st January 2021"}, {"activity_name" => "Camping at Noosa", "date" => "2nd February 2021"}]

Sydney = [{"activity_name" => "Harbour Bridge Climb", "date" => "21st December 2020"}, {"activity_name" => "Rollercoaster zip line", "date" => "31st December 2020", "availabilty" => "Sold Out!"},
{"activity_name" => "Rainforest Canyon Adventure", "date" => "21st December 2020"}, {"activity_name" => "Surfing at Bondi", "date" => "21st January 2021"}, {"activity_name" => "Hiking in the Blue Mountains", "date" => "14th February 2021"}, 
{"activity_name" => "Parasailing in Manly", "date" => "2nd March 2021"}, {"activity_name" => "Hot Air Ballooning", "date" => "2nd January 2021"}]


result = Brisbane.map {|x| x.values}
result2 = result.join(", ")
p result2

result3 = Sydney.map {|x| x.values}
result4 = result3.join(", ")
p result4

result5 = Brisbane.map {|x| x.values[0]}
result6 = result5.join(", ")
p result6





