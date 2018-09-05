def question1
    puts"""

    The first Quidditch match of the season is approaching, and you can't wait to get involved. What role are you playing?

    1. Seeker. I want the glory!
    2. Beater. I like having all that power.
    3. Chaser. I like to be involved, and work as part of the team.
    4. I'll be in the crowd, making sure supporter morale is high!
    5. None. You wish you were playing on an AFL team instead!
    """
end

def question2
    puts"""

    You're locked in a duel with a skilled opponent. They fire an unknown spell at you, and you shout…
    
    1. Expelliarmus!
    2. Protego!
    3. Stupefy!
    4. Crucio!
    5. Abra Kadabra!
    """
end

def question3
    puts"""

    You’ve made it to Hogwarts, which means you’ve already bought a wand from Ollivander’s. What material is at its core?
    
    1. Phoenix Feather
    2. Dragon Heartstring
    3. Unicorn Hair
    4. Gryphon Feather
    5. Thylacines Claw
    """
end

def question4
    puts"""

    You're allowed a pet at Hogwarts. Which do you bring?
    
    1. Owl
    2  Toad
    3. Cat
    4. Nothing. I can't be trusted to look after a pet!
    5. Drop Bear
    """
end

def question5
    puts"""

    It's Saturday. You decide to spend some time away from your common room. Where do you go?
        
    1. The Room of Requirement
    2. The Forbidden Forest
    3. The kitchens
    4. The library
    5. The local TAB to put a few on the ponies
    """
end

def question6
    puts"""

    Which of the following is likely to be your favorite flavor of Bertie Bott's Every Flavor Beans?

    1. Sushi
    2. Red Hot Chilli Pepper
    3. Steak and Baked Potato Dinner
    4. Lobster
    5. Meat pie
    """

end

def question7
    puts"""

    Four goblets are placed before you. Which would you choose to drink?

    1. The foaming, frothing, silvery liquid that sparkles as though containing ground diamonds.
    2. The mysterious black liquid that gleams like ink, and gives off fumes that make you see strange visions.
    3. The smooth, thick, richly purple drink that gives off a delicious smell of chocolate and plums.
    4. The golden liquid so bright that it hurts the eye, and which makes sunspots dance all around the room.
    5. The foaming, aluminium, green and gold can that emits a sweet smell reminicent of long nights watching the cricket.

    """

end

def question8
    puts"""

    Which road tempts you most?

    1. The wide, sunny, grassy lane
    2. The narrow, dark, lantern-lit alley
    3. The twisting, leaf-strewn path through woods
    4. The cobbled street lined with ancient buildings
    5. The laneway dimly lit by glowing red neon lights and the faint sound of bassy music

    """

end

def question9
    puts"""

    A Muggle confronts you and says that they are sure you are a witch or wizard. Do you:

    1. Ask what makes them think so
    2. Tell them that you are worried about their mental health, and offer to call a doctor
    3. Agree, and walk away, leaving them to wonder whether you are bluffing
    4. Agree, and ask whether they’d like a free sample of a jinx
    5. Tell them they're dreaming

    """

end

def question10
    puts"""

    Which would you rather be?

    1. Trusted
    2. Feard
    3. Liked
    4. Praised
    5. A Bloody Legend

    """

end

def question11
    puts"""

    What are you most looking forward to learning at Hogwarts?

    1. Flying on a broomstick
    2. Hexes and jinxes
    3. Transfiguration (turning one object into another object)
    4. Every area of magic that I can
    5. How to do doughies in your mates ute

    """

end

def question12
    puts"""

    If you could have any power, which would you choose? 

    1. The power to change the past
    2. The power of superhuman strength
    3. The power to speak to animals
    4. The power to read minds
    5. The power to have a blood alchohol level of 0.00

    """

end



def question_selector int
    if int == 1
        question1
    elsif int == 2
        question2
    elsif int == 3
        question3
    elsif int == 4 
        question4
    elsif int == 5
        question5
    elsif int == 6
        question6
    elsif int == 7
        question7
    elsif int == 8
        question8
    elsif int == 9
        question9
    elsif int == 10
        question10
    elsif int == 11
        question11
    elsif int == 12
        question12
    end
end

def random_question_selector
    rand 1..12
end