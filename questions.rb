require "RMagick"
require "colorize"

def questions(bank, qnum, win)

    random = bank.sample.values[0].to_a.sample(1).to_h #randomises bank values(fruit or veg) then converts contents to an array and randomises again extracting 1 key aka. "avocado" 
    key = random.keys[0] #accesses the randomised key aka. avocado 
    value = random[key] #accesses the associated value of key aka. The avocado is actually a berry
    
    puts "Question #{qnum}:".bold + "Is a #{key} a fruit or vegetable?"
    
    fruit = bank[0][:fruit].has_key?(key) #checks bank >> goes into :fruit >> checks for fruit key >> returns true or false
    
        prompt = "Please enter fruit or vegetable\n"
    while answer = gets.strip
    if answer == "fruit" && fruit || answer == "vegetable" && !fruit 
        puts "Thats correct! you win a #{key}".bold 
        win.push(key)
        include Magick
        food = ImageList.new("./images/#{key}.png")
        food.display
        puts value.italic  
        break
    
    elsif answer == "vegetable" && fruit || answer == "fruit" && !fruit 
        then puts "YOU FAIL NO #{key.upcase} FOR YOU".bold 
        include Magick
        food = ImageList.new("./images/wrong.png")
        food.display
        puts value.italic 
        break 
    else 
        puts "Invalid Input"
        print prompt 
    end 
    end 
    if fruit == true 
    bank[0][:fruit].delete(key)
    else 
        bank[1][:vegetable].delete(key)
    end 
    sleep (4)
    return win 
end  