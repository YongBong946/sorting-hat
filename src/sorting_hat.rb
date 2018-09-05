# grants access to winning_house.rb file.
require_relative 'ascii.rb'
# acquires colorize gem
require 'colorize'
# grants access to quiz_questions.rb file
require_relative 'quiz_questions.rb'

# This is the animated colorize intro logo.
# It works by clearing the logo, puting it back to screen, waiting one second then puting again in a different colour.
system "clear"
puts Houses::SORTINGHATLOGO.colorize(:red)
sleep 1
system "clear"
puts Houses::SORTINGHATLOGO.colorize(:green)
sleep 1
system "clear"
puts Houses::SORTINGHATLOGO.colorize(:yellow)
sleep 1
system "clear"
puts Houses::SORTINGHATLOGO.colorize(:blue)
sleep 1
system "clear"
puts Houses::SORTINGHATLOGO

sleep 1

# The start menu. Asking whether to being sorting or exit.
# If 2 is input it exits.
# If 1 is input the sorting begins.

puts "1. Begin Sorting".colorize(:green)
puts "2. Exit".colorize(:red)

# while will loop until 1 or 2 is entered.
start = gets.strip.to_i
while start != 1 && start != 2
    puts "*** Please select from options listed ***"
    start = gets.strip.to_i
end
# if user selects 2 program will exit
if start == 2
    exit
end

#Enter wizards same to be stored as variable player_name.
# If ruegen (muggle) is detected program will abort.

puts "Please enter wizard or witch name to be sorted: "
player_name = gets.strip.downcase
if player_name == "ruegen" || player_name == "eathan"
    puts Houses::MUGGLE.colorize(:red)
    `say "MUGGLE DETECTED, ABORT, ABORT, ABORT"`
    exit
end

system "clear"

# Printing more graphics onto screen before beginning

puts Houses::SORTINGHATLOGO

puts "Answer all questions truthfully and instinctfully, I will know if you're lying!"

sleep 4

system "clear"

puts Houses::SORTINGHATLOGO

# The points variables are where we are storing the house points as questions are answered.

gryffindor_points = 0
slytherin_points = 0
hufflepuff_points = 0
ravenclaw_points = 0
aussie_points = 0

# Question_selector loop is being used to add points to the corresponding house when that answer selected
# It's also looping through the quetions each time +1 is added to the counter


counter = 0
dup_preventer = [] #Array stores rand number to be compared against self to prevent duplicates
while counter < 7
    question_number = random_question_selector
    
    #"dup_number" creates a variable storing the result of "random_question_selector" which is producing a random number
    # "dup_preventer.include is checking the dup_number variable against it's self to see if that number already exists within it.
    # If it does it calls the random_question_selector again to get a new number until the number given does not already exist within itself.
   
    while dup_preventer.include?(question_number) == true 
    question_number = random_question_selector
    end
    # question_selector takes random generated number from question number and calls the releveant question
    # the number is then pushed into the the array to prevent duplicate questions from appearing
    question_selector(question_number)
    dup_preventer.push(question_number)
    answer = gets.strip.to_i

    # If answer given not an option. While loop will run until a valid option is input.
    while answer != 1 && answer != 2 && answer != 3 && answer != 4 && answer != 5
        puts "*** Please select from options listed ***"
        answer = gets.strip.to_i
    end
        if answer == 1
            gryffindor_points += 1
        elsif answer == 2
            slytherin_points += 1
        elsif answer == 3
            hufflepuff_points += 1
        elsif answer == 4
            ravenclaw_points += 1
        elsif answer == 5
            aussie_points += 1 
        end
    counter += 1
    system "clear"
    puts Houses::SORTINGHATLOGO
    sleep 1
end
    
system "clear"
puts "Hmmmm...a tough one....."
sleep 2
puts "Where to put you..."
sleep 2
system "clear"

# After all questions are answered the points variables are compared to each other
# The house with the highest number of points is printed to screen


if gryffindor_points >= slytherin_points && gryffindor_points >= hufflepuff_points && gryffindor_points >= ravenclaw_points && gryffindor_points >= aussie_points

    puts Houses::GRYFFINDOR.colorize(:red)

    `say "Congratulations, #{player_name} you've been placed in Griffendoor"`
    
elsif slytherin_points >= gryffindor_points && slytherin_points >= hufflepuff_points && slytherin_points >= ravenclaw_points && slytherin_points >= aussie_points
    
    puts Houses::SLYTHERIN.colorize(:green)
    
    `say "Congratulations, #{player_name} you've been placed in Slitherin"`
    
elsif hufflepuff_points >= gryffindor_points && hufflepuff_points >= slytherin_points && hufflepuff_points >= ravenclaw_points && hufflepuff_points >= aussie_points
    
    puts Houses::HUFFLEPUFF.colorize(:yellow)

    `say "Congratulations, #{player_name} you've been placed in Hufflepuff"`

    
elsif ravenclaw_points >= gryffindor_points && ravenclaw_points >= slytherin_points && ravenclaw_points >= aussie_points && ravenclaw_points >= hufflepuff_points
    
    puts Houses::RAVENCLAW.colorize(:blue)

    `say "Congratulations, #{player_name} you've been placed in Rayvinclaw"`

elsif aussie_points >= gryffindor_points && aussie_points >= slytherin_points && aussie_points >= ravenclaw_points && aussie_points >= hufflepuff_points
    
    puts Houses::TRUEBLUE

    `say "Too bad, #{player_name} you're a smelly old muggle, go home"`

end


# Harry Potter Sorting Hat
# By Yong Liang and Sam Ludwig