require "RMagick"
require "colorize"

# Fruits are formed from flowers, have seeds and assist with the plant’s reproduction process. 
# vegetables are the roots, stems, leaves or other auxiliary parts of the plant. 

bank = [{
    fruit: {
        tomato: "Tomatoes are botanically fruits because they form from a flower and contain seeds",
        cucumber: "Cucumbers are botanically fruits because they develop from the flower of the cucumber plant and contain the seeds.",
        avocado: "The avocado is actually a berry! Avocados are considered a fruit because they fit all of the botanical criteria for a berry.",
        aubergine: "Aubergines are botanically fruits because the contain seeds",
        lemon: "A lemon is classified as a type of fruit. The reason that it is considered a fruit rather than a vegetable is because it still contains its seeds.",
        olive: "Olives are classified as frut because they're formed from the ovary of the olive flower and contain seeds"
    }
    }, 
    {
    vegetable: {    
        broccoli: "Broccoli is an edible green plant in the cabbage family whose large flowering head and stalk is eaten as a vegetable.",
        carrot: "Botanically a carrot is considered a root vegeatable",
        garlic: "Garlic belongs to the onion family and is botanically considered a vegetable",
        corn: "Whole corn, like you eat on the cob, is considered a vegetable. The corn kernel itself (where popcorn comes from) is considered a grain.",
        artichoke: " The artichoke part that is eaten is botanically a flower but could also be classified as a vegetable by the way it is consumed"
    }
}]

puts "Welcome to, Is it a Fruit or a Vegetable".bold
puts "Where your knowledge of fruit and vegetables will be challenged"


def questions(bank)

random = bank.sample.values[0].to_a.sample(1).to_h #randomises bank values(fruit or veg) then converts contents to an array and randomises again extracting 1 key aka. "avocado" 
key = random.keys[0] #accesses the randomised key aka. avocado 
value = random[key] #accesses the associated value of key aka. The avocado is actually a berry

puts "Question 1:".bold + "Is a #{key} a fruit or vegetable?"

fruit = bank[0][:fruit].has_key?(key) #checks bank >> goes into :fruit >> checks for fruit key >> returns true or false

    prompt = "Please enter fruit or vegetable\n"
while answer = gets.strip
if answer == "fruit" && fruit || answer == "vegetable" && !fruit 
    puts "Thats correct! you win a #{key}".bold 
    include Magick
    food = ImageList.new("#{key}.png")
    food.display
    puts value 
    break

elsif answer == "vegetable" && fruit || answer == "fruit" && !fruit 
    then puts "YOU FAIL NO #{key.upcase} FOR YOU".bold 
    include Magick
    food = ImageList.new("wrong.png")
    food.display
    break 
else 
    puts "Invalid Input"
    print prompt 
end 
end  
end

questions(bank)
questions(bank) 





