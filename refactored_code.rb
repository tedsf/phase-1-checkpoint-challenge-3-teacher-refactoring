###---Modules
module Fivable
  def offer_high_five
    "High five!"
  end
end

module Raisable
  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end
end

module Recievable
    def receive_raise(raise)
    @salary += raise
  end
end

module Phasable
  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end
end

###---Classes
class Person
  attr_reader :age, :phase
  attr_accessor :name

  def initialize(options={})
    @phase = 3
    @age = options.fetch(:age, 0)**
    @name = options.fetch(:name, "")**
  end
end

class Student < Person

  def initialize(options = {})
    super
    @phase = 1
  end

  include Fivable

  def set_phase(num)
    response = ""
    if num == @phase
      response += "I'm doing phase #{@phase} again because "
      response += "I put my learning first. I'm gonna rock it!"
    else
      response = "Oooh, phase #{num}. I hope I'm ready!"
    end
    @phase = num
    response
  end

  def learn_stuff
    response = ""
    response += "WHOA! I've never thought of it quite like that before. "
    response += "Now I feel like a genius!"
    response
  end
end

class Teacher < Person
  attr_reader :salary, :performance_rating, :target_raise

  def initialize(options={})
    super
    @target_raise = 1000
  end

  include Fivable
  include Phasable
  include Raisable
  include Recievable

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works, fo SHO! "
    response += "*drops flat-out insane knowledge bomb* "
    response += "... You're welcome. *saunters away*"
    response
  end

  def set_performance_rating(rating)
    response = ""
    if rating > 90
      receive_raise(@target_raise)
      response = "Yay, I'm a great employee!"
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end
end

class ApprenticeTeacher < Person
  attr_reader :salary, :target_raise

  def initialize(options={})
    super
    @target_raise = 800
  end

  include Fivable
  include Phasable
  include Raisable
  include Recievable

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
  end

  def set_performance_rating(rating)
    response = ""
    if rating > 80
      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise)
    else
      response = "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
    end
    response
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end

