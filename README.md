<!DOCTYPE html>
<html>

<head>
<h1> Is it a Fruit or a Vegetable? <br></h1>
<h2> Software Development Plan </h2>
</head>

<body>
Soft development plan blah blah <br>
<br>
<b> Statement of Purpose <br></b>
    Is it a Fruit or Vegetable aims to be a fun mini-game with an educational twist. The game will ask the user to determine if the selected object is a fruit or vegetable. For example, "Is a cucumber a fruit or a vegetable?" If the user answers correctly they are rewarded with an image of the corresponding fruit/vegetable - "cucumber.png." In the event of an incorrect answer the user is demirited with a crying face image. In both instances, correct or incorrect, a botanical description of the fruit/vegetable will be printed. The user is quized five times on their knowledge of fruit and vegetables.<br>
    <br>
    Most people know that a tomato is technically a fruit but they usually don't know the reasons why. Is it a Fruit or Vegetable fills that gap of knowledge by educating users what distinguishes a fruit from a vegetable in a fun and exciting way. <br>
    <br>
    The target audience for this game is predominantly children but can also educate and entertain adults in a mindblowing fashion. The game can also be used in entry level botanical/agricultural studies course. If you didn't know that an olive is technically a berry which makes it a fruit then this is the game for you. 
    <br>
    <br>
    The game in its current state can be downloaded from GitHub and played. However, best use case is to be uploaded to a mini-game platform such as miniclip.com for younger users to access. The game could also be promoted to agricultural/botanical study courses at universities promoted as part of the introductory rubrick. Additional fruits/vegetable with their descriptions will be added upon rollout.   
    <br>
    <br>
<b> Feautures </b>
    <br>
    <br>
    Is it a Fruit or Vegetable has four main features; <br>
    - A <b>bank</b> of fruit and vegetables with their botanical description
    <br>
    - A <b>randomiser</b> which selects the questions in the quiz  
    <br>
    - <b> User input</b> to answer the questions 
    <br>
    -  An <b>image</b> reward system for correct and incorrect answers.
    <br>
    <br>
The <b>bank</b> of fruit and vegetable is variable named bank which stores an array of 2 items - a hash of "fruit:" and a hash of "vegetable:" Within the fruit and vegetable hashes are another hash containing the names of fruit/vegetable and their descriptions. The name is the <u>key</u> and description is the <u>value</u>. Please see example below. 
<br>
<br>
bank = [{
    fruit: {
        tomato: "Tomatoes are botanically fruits because they form from a flower and contain seeds" 
    }
}]
<br>
<br>
The bank variable acts as an easy way to access each item individually. Since we are randomlly choosing fruits and vegetables for our questions we require this many levels of hashes within an array.
<br>
<br>
The <b>randomiser</b>, randomly selects fruit/vegetable names from the bank to fill the question, "Is a (randomly chosen) a fruit or a vegetable?". Since the quiz is only five questions long the user is encouraged to replay the quiz - the randomiser enables a sense of replayability as the questions asked are unlikley to be the same. Below is the description to the code used to randomise the questions and extract the corresponding descrition.
<br>
<br>
bank.sample.values[0].to_a.sample(1).to_h 
<br>
<br>
Takes the variable bank and randomises the values(fruit or veg) then converts contents to an array and randomises again extracting 1 key aka. "avocado". Contents are converted back into a hash to simplify future access.
The contents are converted into an array because .sample does not work on an hash. 
<br>
<br>
key = random.keys[0]
<br>
<br>
Accesses the randomised key aka. "avocado"
<br>
<br> 
value = random[key] 
<br>
<br>
Accesses the associated value of key, "Avocado is technically a berry"
<br>
<br>
For the quiz to be interactive we need <b>User Input</b>. Users can type their answers, "fruit" or "vegetable" into the terminal as a way of interacting with the quiz. gets.strip is used to achieve this level of interaction. To determine the different user inputs a while loop containing a if/else statement is used to decipher the user inputted answers. The while loop with a prompt, "Please enter fruit or vegetable" is used for invalid inputs allowing the application to continue running instead of closing.
<br>
<br>
An <b>image</b> file opens as a separte window upon answering a question correctly or incorrectly. The image aims to bring vibrance to the quiz adding another level of interactivity. A ruby gem called RMagick was installed to achieve this which works concurrently with XQuartz. Below is the code used to generate the image.
<br>
<br>
require "RMagick" <br>
include Magick <br>
    food = ImageList.new("./images/#{key}.png")<br>
    food.display<br>
<br>

<b>User Interaction and Experience</b>

Users are first welcomed to the application with a short introduction. Afterwards the first randomised question appears prompting the user for input. If the user selects "fruit" or "vegetable" an image will appear and a botanical description of the fruit/vegetable will be printed. If the user types anything else the application will prompt the user, "Please enter fruit or vegetable." To move onto the next question the user will need to close the image file - this is a current flaw in the UI and will be fixed in a later version. A description of the fruit/vegetable is printed for users to read 3.5 seconds before the next question appears.  All 5 questions run from the same method repeating the same process of: <br>
Question > Answer > Image Result > Close image > Description > Next Question. <br>












    
</body>




</html>
