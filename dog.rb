require './animal.rb'
require './foods.rb'

class Dog < Animal
  def initialize(color, name = "unknown")
    super("dog", 4, name)
    @color=color
    @liked_food = DogFood.new
  end

  def bring_a_stick
    "here is your stick: --------"
  end

  def speak
    "woof woof"
  end
end

# dog = Dog.new("black", "Rex")

# dog.bring_a_stick()

# dog.make_a_web()
