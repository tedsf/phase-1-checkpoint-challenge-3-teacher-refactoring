require_relative 'refactored_code'
#Getting error: /Users/apprentice/Desktop/phase-1-checkpoint-challenge-3-teacher-refactoring/apprentice_teacher.rb:1:in
#`require_relative': /Users/apprentice/Desktop/phase-1-checkpoint-challenge-3-teacher-refactoring/refactored_code.rb:38:
#syntax error, unexpected keyword_end (SyntaxError)

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

  #this can be re-factored more, if we can alter the responses inside the actual class
  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
  end

  #this can be re-factored more, if we can alter the responses inside the actual class
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

# class ApprenticeTeacher
#   attr_reader :age, :salary, :phase, :target_raise
#   attr_accessor :name

#   def initialize(options={})
#     @age = options.fetch(:age, 0)
#     @name = options.fetch(:name, "")
#     @target_raise = 800
#     @phase = 3
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
#     response += "Listen, class, this is how everything works. "
#     response += "*drops crazy knowledge bomb* "
#     response += "... You're welcome."
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
#     if rating > 80
#       response = "Yay, I'm a great employee!"
#       receive_raise(@target_raise)
#     else
#       response = "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
#     end
#     response
#   end

#   def attend_training_session
#     puts "Whoa. I know ruby-fu"
#   end
# end
