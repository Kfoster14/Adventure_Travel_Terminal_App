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

customers = []








Brisbane = [{"activity_name" => "Story Bridge Climb", "date" => "21st December 2020"}, {"activity_name" => "Kangaroo Point Rock Climbing", "date" => "31st December 2020"}, {"activity_name" => "Night Kayaking at Moreton Island", "date" => "21st December 2021"}, {"activity_name" => "Whale Watching at North Stradbroke Island", "date" => "3rd December 2020", "availabilty" => "Sold Out!"},
{:activity_name => "Kayaking on Bremer River", "date" => "21st December 2020"}, {"activity_name" => "Surfing at Moolloolaba", "date" => "21st January 2021"}, {"activity_name" => "Camping at Noosa", "date" => "2nd February 2021"}]






result3 = Sydney.map {|x| x.values}
result4 = result3.join(", ")
p result4

result5 = Brisbane.map {|x| x.values[0]}
result6 = result5.join(", ")
p result6

puts "Please enter the city."


chosen_activity = []
 
Brisbane.each do |key, value|
  chosen_activity << value2
end

 






