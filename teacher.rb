require_relative 'refactored_code'

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

  #this can be re-factored more, if we can alter the responses inside the actual class
  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works, fo SHO! "
    response += "*drops flat-out insane knowledge bomb* "
    response += "... You're welcome. *saunters away*"
    response
  end

  #this can be re-factored more, if we can alter the responses inside the actual class
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

# class Teacher
#   attr_reader :age, :salary, :phase, :performance_rating, :target_raise
#   attr_accessor :name

#   def initialize(options={})
#     @phase = 3
#     @age = options.fetch(:age, 0)
#     @name = options.fetch(:name, "")
#     @target_raise = 1000
#   end

#   def offer_high_five
#     "High five!"
#   end

#   def set_phase(num)
#     @phase = num
#     "Cool, I've always wanted to teach phase #{num}!"
#   end

#   def teach_stuff
#     response = ""
#     response += "Listen, class, this is how everything works, fo SHO! "
#     response += "*drops flat-out insane knowledge bomb* "
#     response += "... You're welcome. *saunters away*"
#     response
#   end

#   def salary=(new_salary)
#     puts "This better be good!"
#     @salary = new_salary
#   end

#   def receive_raise(raise)
#     @salary += raise
#   end

#   def set_performance_rating(rating)
#     response = ""
#     if rating > 90
#       receive_raise(@target_raise)
#       response = "Yay, I'm a great employee!"
#     else
#       response += "Oh, well -- thanks to this actionable, specific, and kind "
#       response += "feedback, I'll do better next time."
#     end
#     response
#   end
# end
