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
require 'colorize' 
puts "Welcome to the main menu.".colorize(:color => :blue, :background => :white)
   
require "tty-prompt"

prompt = TTY::Prompt.new(symbols: {marker: ">"})
    
prompt.select("Please choose from the options below:") do |menu|
    menu.enum "."
      
    menu.choice "View list of adventure activities", 1
    menu.choice "Book an adventure", 2
    menu.choice "Cancel your booking", 3
    menu.choice "Exit the Travel App", 4
end 



require 'colorize'    

    puts "List of Adventure Activities:".colorize(:color => :blue, :background => :white)
    puts "a. Story Bridge Climb".colorize(:color => :green)
    puts "b. Kangaroo Point Rock Climbing".colorize(:color => :green)
    puts "c. Kayaking on Bremer River".colorize(:color => :green)
    puts "d. Surfing at Bondi".colorize(:color => :green)
    puts "e. Hiking in Blue Mountains".colorize(:color => :green)
    

require "tty-prompt"
prompt = TTY::Prompt.new
choices = [
  {
    key: "a",
    name: "Story Bridge Climb",
    value: :option1
  }, {
    key: "b",
    name: "Kangaroo Point Rock Climbing",
    value: :option2
  }, {
    key: "c",
    name: "Kayaking on Bremer River",
    value: :option3
  }, {
    key: "d",
    name: "Surfing at Bondi",
    value: :option4
  }, {
    key: "e",
    name: "Hiking in Blue Mountains",
    value: :option5 
  }
]

prompt.expand("Choose your activity:") do |q|
    q.choice key: "a", name: "Story Bridge Climb",  value: :option1
    q.choice key: "b", name: "Kangaroo Point Rock Climbing",  value: :option2
    q.choice key: "c", name: "Kayaking on Bremer River", value: :option3
    q.choice key: "d", name: "Surfing at Bondi", value: :option4
    q.choice key: "e", name: "Hiking in Blue Mountains",  value: :option5
end

activity_name = prompt.expand("Choose your activity:", choices)

p activity_name


