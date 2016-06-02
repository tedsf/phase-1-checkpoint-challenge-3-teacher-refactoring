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

###---Super Class
class Person
  attr_reader :age, :phase
  attr_accessor :name

  def initialize(options={})
    @phase = 3
    @age = options.fetch(:age, 0)**
    @name = options.fetch(:name, "")**

  end
end




