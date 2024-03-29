require_relative "./questions.rb"
require "RMagick"
require "colorize"
require "tty-font"

bank = [{
    fruit: {
        tomato: "Tomatoes are botanically fruits because they form from a flower and contain seeds",
        cucumber: "Cucumbers are botanically fruits because they develop from the flower of the cucumber plant and contain the seeds.",
        avocado: "The avocado is actually a berry! Avocados are considered a fruit because they fit all of the botanical criteria for a berry.",
        aubergine: "Aubergines are botanically fruits because they contain seeds",
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

begin
argv_copy = ARGV.map{ |i| i }
 
help_options = ["-h", "--help"]

if help_options.include?(ARGV[0])
    File.open("help_file.md").each do |line|
        puts line 
    end
end 

rescue
    puts "You have encountered an error, good luck :)"
end 

#Welcome
font = TTY::Font.new(:doom)
puts font.write("Is it a Fruit or a Vegetable", letter_spaceing: 10)
puts "Where your knowledge of fruit and vegetables will be challenged".bold 

sleep(4)

win = []

#Questions
questions(bank, 1, win)
questions(bank, 2, win)
questions(bank, 3, win)
questions(bank, 4, win)
questions(bank, 5, win)

#Conclusion
puts font.write("Thank you for playing", letter_spaceing: 10)

puts "In your goodie bag is:".bold 
win.each do |item| puts item.to_s.bold end




