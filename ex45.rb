class Scene
  def enter()
    puts "This scene is not yet configured. Subclass it and implement enter()."
    exit(1)
  end
end

class Engine

  def initialize(scene_map)
    @scene_map = scene_map
  end

  def play()
    current_scene = @scene_map.opening_scene()
    last_scene = @scene_map.next_scene('finished')

    while current_scene != last_scene
      next_scene_name = current_scene.enter()
      current_scene = @scene_map.next_scene(next_scene_name)
    end

    # be sure to print out the last scene
    current_scene.enter()
  end
end

class Death < Scene

  @@quips = [
    "You did not make it this time.. Better luck next time!",
    "Man.. You suck!",
    "Learn from your mistakes, and try again!"
  ]

  def enter()
    puts @@quips[rand(0..(@@quips.length - 1))]
    exit(1)
  end
end

class DarkRoom < Scene

  def enter()
    puts "You are in a dark room. You have no idea how you got here"
    puts "and you don't remember anything at all. You are feeling uneasy, you"
    puts "need to get out of this room."
    puts "\n"
    puts "\n"
    puts "You see a small digital screen with a math equation and a little"
    puts "input board below it.."
    puts "\n"
    first_num = rand(1..20)
    second_num = rand(1..20)
    puts "#{first_num} * #{second_num} = "
    code = first_num * second_num
    print "[keypad]> "

    guess = Integer(gets) rescue nil

    if guess == code
      puts "You guessed, well done! A mechanical door slides open.."
      return 'corridor'
    elsif (guess.is_a? Integer) == false
      puts "Please input a valid answer."
    else
      puts "Wrong code, please try again."
    end
  end
end

class Corridor < Scene

  def enter()
    puts "You pass the door into a very dark and narrow corridor,"
    puts "the corridor comes to a sudden end after 2 meters. "
    puts "You can't see anything at all, but you realise the corridor splits in two."
    puts "You can either go to the left, or turn to the right."
    print "> "

    action = $stdin.gets.chomp

    if action == "left"
      puts "You decide to take the route to the left, unfortunately, after"
      puts "taking a couple steps you fall into a huge trap and die!"
      return 'death'

    elsif action == "right"
      puts "You turn to your right and slowly start walking forwards."
      puts "So far, so good.. You carefully carry on walking. Suddenly, "
      puts "just before turning back to take the other route, you see a door"
      puts "in front of you. You look for its handle, anxious, you open the door."
      return 'gold_room'

    else
      puts "Please input a valid answer."
      return 'corridor'
    end
  end
end

class GoldRoom < Scene

  def enter()
    puts "You open the door into a very well lit room, Finally, some light."
    puts "The room is full of gold, it is amazing. You see many paintings"
    puts "on the wall with death related symbols. There is a note, would you"
    puts "like to pick it up?"
    print "> "

    choice = $stdin.gets.chomp


    if choice == "yes"
      puts "\n"
      puts "-------------"
      require "./ex45an.rb"
      puts "-------------"
      puts "\n"
      puts "The note dissolves in your hands..."
    elsif choice == "no"
      puts "\n"
      # carry on through journey
    else
      puts "Please input a valid answer."
      return 'gold_room'
    end

    puts "As you venture into the room you realise there is a bear in it."
    puts "The bear is in front of another door, and it slowly starts approaching you"
    puts "You notice there is a jar of honey next to you."
    puts "You think the smartest thing to do would be to put the jar of honey"
    puts "in the corridor, outside this room. Do you do that?"
    print "> "

    choice2 = $stdin.gets.chomp

    if choice2 == "yes"
      puts "You successfully locked the bear on the other side of the door."
      puts "You can now approach the door safely."
      return 'final_door'
    elsif choice2 == "no"
      puts "The bear is so hungry that confuses you for its jar of honey."
      puts "You are dead."
      return 'death'
    else
      puts "Please input a valid answer."
      return 'gold_room'
    end
   end
end

class FinalDoor < Scene

  def enter()
    puts "As you start approaching the door, you get tempted to get some of the gold."
    puts "It seems like it is worth a lot. Do you get some?"
    print "> "

    choice = $stdin.gets.chomp

    if choice == "yes"
      puts "You greedy bastard, you ignored the signs... The floor starts moving"
      puts "and the whole room comes falling down and crushes you to your death!!"
      return 'death'
    elsif choice == "no"
      return 'final_door_code'
    else
      puts "Please input a valid answer."
      return 'final_door'
    end
  end
end

class FinalDoorCode < Scene

  def enter()
    puts "You head towards the door. There is a keypad lock on it."
    puts "You need to get the code to open the door. If you get the code"
    puts "wrong 10 times then the lock closes forever."
    puts "The code is 2 digits long."
    code = "#{rand(1..3)}#{rand(1..3)}"
    print "[keypad]> "
    guess = $stdin.gets.chomp
    guesses = 0

    while guess != code && guesses < 2
      puts "BZZEEED!"
      guesses += 1
      print "[keypad]> "
      guess = $stdin.gets.chomp
    end

    if guess == code
      puts "The door unlocks open into the wild. You escaped the maze."
      puts "You sigh with relief.."
      return 'finished'
    else
      puts "The lock buzzes one last time and the floor starts moving. The whole"
      puts "room comes falling down and crushes you to your death!!"
      return 'death'
    end
  end
end

class Finished < Scene

  def enter()
    puts "You are a free man!! You feel energised and ready to find your way"
    puts "back home. Go on then, to the next adventure!"
    puts "To be continued..."
  end
end

class Map
  @@scenes = {
    'dark_room' => DarkRoom.new(),
    'corridor' => Corridor.new(),
    'gold_room' => GoldRoom.new(),
    'final_door' => FinalDoor.new(),
    'final_door_code' => FinalDoorCode.new(),
    'death' => Death.new(),
    'finished' => Finished.new(),
  }


  def initialize(start_scene)
    @start_scene = start_scene
  end


  def next_scene(scene_name)
    val = @@scenes[scene_name]
    return val
  end

  def opening_scene()
    return next_scene(@start_scene)
  end
end

a_map = Map.new('dark_room')
a_game = Engine.new(a_map)
a_game.play()#
