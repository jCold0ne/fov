<!DOCTYPE html>
<html>

<head>
<h1> Is it a Fruit or a Vegetable? <br></h1>
<h2> Software Development Plan </h2>
<a href="https://github.com/jCold0ne/fov">GitHub</a>
<br>
</head>

<body>
<br>
<b> Statement of Purpose <br></b>
    Is it a Fruit or Vegetable aims to be a fun mini-game with an educational twist. The game will ask the user to determine if the selected object is a fruit or vegetable. For example, "Is a cucumber a fruit or a vegetable?" If the user answers correctly they are rewarded with an image of the corresponding fruit/vegetable - "cucumber.png." In the event of an incorrect answer the user is demirited with a crying face image. In both instances, correct or incorrect, a botanical description of the fruit/vegetable will be printed. The user is quized five times on their knowledge of fruit and vegetables and upon conclusion the user is rewarded with a list of their correct answers.<br>
    <br>
    Most people know that a tomato is technically a fruit but they usually don't know the reasons why. Is it a Fruit or Vegetable fills that gap of knowledge by educating users what distinguishes a fruit from a vegetable in a fun and exciting way. <br>
    <br>
    The target audience for this game is predominantly children but can also educate and entertain adults in a mindblowing fashion. The game can also be used in an entry level botanical/agricultural studies course. If you didn't know that an olive is technically a berry which makes it a fruit then this is the game for you. 
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
The <b>randomiser</b>, randomly selects fruit/vegetable names from the bank to fill the question, "Is a (randomly chosen) a fruit or a vegetable?". The randomiser has been configured to not ask the same questions twice in the same quiz through use of the .delete function. Since the quiz is only five questions long the user is encouraged to replay the quiz - the randomiser enables a sense of replayability as the questions asked are unlikley to be the same. Below is the description to the code used to randomise the questions and extract the corresponding descrition.
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
An <b>image</b> file opens as a separte window upon answering a question correctly or incorrectly. The image aims to bring vibrance to the quiz adding another level of interactivity. A ruby gem called RMagick was installed to achieve this which works concurrently with XQuartz and ImageMagick. Below is the code used to generate the image.
<br>
<br>
require "RMagick" <br>
include Magick <br>
    food = ImageList.new("./images/#{key}.png")<br>
    food.display<br>
<br>

<b>User Interaction and Experience</b>

Users are first welcomed to the application with a short introduction written in tty-font(a ruby gem for font design). Afterwards the first randomised question appears prompting the user for input. If the user selects "fruit" or "vegetable" an image will appear and a botanical description of the fruit/vegetable will be printed. If the user types anything else the application will prompt the user, "Please enter fruit or vegetable." To move onto the next question the user will need to close the image file - this is a current flaw in the UI and will be fixed in a later version. A description of the fruit/vegetable is printed for users to read 4 seconds before the next question appears. This extra 4 seconds allows the user to read the description before beginning the next questions. All 5 questions run from the same method repeating the same process of: <br>
Question > Answer > Image Result > Close image > Description > Next Question. 

After the fifth question the mini-game thanks the user for playing and prints their winning answers to the screen.

<b>Implementation Plan</b>

Feature 1 - Bank
This feature will be implemented as a variable storing an array which stores a hash within another hash. The bank will be accessed throughout the program by the other features, disucssed below. The bank will be used as a central point of information and data. 

Feature 2 - Randomiser

This feature will be implemented at every question, randomising the question and never printing the same question twice. The randomiser retrieves a fruit or vegetable name from the bank and prints it in the question. Upon answering the question the randomiser 'rememebers' which fruit/vegetable it picked and prints its description. Before the next question is asked the randomiser deletes the fruit from the bank so the same question can't be asked twice. 

Feature 3 - User Input
This feature works in harmony with feauture 1 and 2. Throughout the application the user is asked to enter their answer into the terminal. The user has an unlimited time to answer the question and is rewarded for the input.

Feature 4 - Image Reward
As mentioned in feature 3, this feature is implemented after user input has been made. An image reward is printed to the screen in a separate window and is required to be closed before the application can continue to its next task. 
<br>
<b>Status Updates</b>

<i>04/09/2019</i>
App is coming along well - the feature of randomly selecting the question is running smoothly. Currently downloading images of  fruit and vegetables selected - converting to pngs where necessary. Ran into a block where the user input of “fruit” always equates to the right answer and “vegetable” equating to the wrong answer. Trello is full of tasks moving from backlog to in progress and documentation is in its infancy. No trouble having the app up and running by Friday. 

<i>05/09/2019</i>

The app now deciphers whether or not the user input is a fruit or vegetable and is able to delete the fruit/veg chosen by the randomiser so it is not randomised again in a subsequent question. Documentation has been started currently working on the User Interactions and experience section. A scoring system has been added to the application which compiles the correct answers into an array and prints the contents to the page as a string. 

<b>Implement Application</b>
Screenshots of trello in use:

[]https://github.com/jCold0ne/fov/blob/master/docs/trello_ss_1.png

[]https://github.com/jCold0ne/fov/blob/master/docs/trello_ss_2.png

[]https://github.com/jCold0ne/fov/blob/master/docs/trello_ss_3.png  


   
</body>
</html>
