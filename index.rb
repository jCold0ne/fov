require "RMagick"

fruits = {
    tomato: "description",
    strawberry: "description1",
}

vegetables = {
    potato: "description",
    carrot: "description1",
}

puts "Welcome to, Is it a Fruit or a Vegetable?" 

puts "Where your knowledge of fruit and vegetables will be challenged"

puts "Question 1: Is a tomato a fruit or vegetable?"

answer = gets.chomp 

if answer == "fruit"
    puts fruits[:tomato]
    include Magick
food = ImageList.new("tomato.png")
food.display
exit 
elsif answer == "vegetable"
    then p "YOU FAIL NO TOMATO FOR YOU"
end 

# include Magick
# food = ImageList.new("tomato.png")
# food.display
# exit 
