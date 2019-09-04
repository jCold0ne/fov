require "RMagick"
require "colorize"

# Fruits are formed from flowers, have seeds and assist with the plant’s reproduction process. 
# vegetables are the roots, stems, leaves or other auxiliary parts of the plant. 

array = [{
    fruit: {
        tomato: "Tomatoes are botanically fruits because they form from a flower and contain seeds",
        strawberry: "description1"
    }
    }, 
    {
    vegetable: {    
        potato: "description2",
        carrot: "description3"
    }
}]

random = array.sample.values[0].to_a.sample(1).to_h.keys[0]

puts "Welcome to, Is it a Fruit or a Vegetable".bold
puts "Where your knowledge of fruit and vegetables will be challenged"
puts "Question 1:".bold + "Is a #{array.sample.values[0].to_a.sample(1).to_h.keys[0]} a fruit or vegetable?"

answer = gets.chomp 

if answer == "fruit"
    puts random 
    include Magick
    food = ImageList.new("tomato.png")
    food.display
elsif answer == "vegetable"
    then p "YOU FAIL NO TOMATO FOR YOU"
    include Magick
    food = ImageList.new("squashed_tomato.png")
    food.display
else 
    puts "Invalid Input"
end 
gets.chomp 



# sleep(3)
