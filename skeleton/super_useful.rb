# PHASE 2
def convert_to_int(str)
  Integer(str)
  rescue ArgumentError
    nil
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include?(maybe_fruit)
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else
    raise StandardError
  end
end

def feed_me_a_fruit
  begin
    puts "Hello, I am a friendly monster. :)"

    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit)
  rescue
    if maybe_fruit == "coffee"
      retry
    else
      raise StandardError
    end
  end
end

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
      if @name.length <= 0
        raise "We can't be besties if you don't have a name!"
      end
    @yrs_known = yrs_known
      if @yrs_known < 5
        raise "1 year does not make us besties!"
      end
    @fav_pastime = fav_pastime
      if @fav_pastime.length <= 0
        raise "We need to have a past-time if we want to do stuff together"
      end

  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me."
  end
end
