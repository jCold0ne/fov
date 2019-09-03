require "RMagick"
require "colorize"

fruits = {
    tomato: "description",
    strawberry: "description1",
}

vegetables = {
    potato: "description",
    carrot: "description1",
}

puts "Welcome to, Is it a Fruit or a Vegetable".bold
puts "Where your knowledge of fruit and vegetables will be challenged"
puts "Question 1:".bold + "Is a tomato a fruit or vegetable?"

answer = gets.chomp 

if answer == "fruit"
    puts fruits[:tomato]
    include Magick
food = ImageList.new("tomato.png")
food.display
exit 
elsif answer == "vegetable"
    then p "YOU FAIL NO TOMATO FOR YOU"
    include Magick
    food = ImageList.new("squashed_tomato.png")
    food.display
end 




# include Magick
# food = ImageList.new("tomato.png")
# food.display
# exit 
