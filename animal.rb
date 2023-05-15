class Animal
  def initialize(type, number_of_legs, name = "Unknown")
    @id = Random.rand(1..1000)
    @name = name
    @number_of_legs = number_of_legs
    @type = type
  end

  def id
    @id
  end

  def type
    @type
  end

  def number_of_legs
    @number_of_legs
  end

  def name
    @name
  end

  def name=(value)
    @name = value
  end

  # abstraction

  def speak(animal)
    "grrr"
  end

  def bring_a_stick
    if @type == "dog"
      "Here is your stick: ---------"
    end
  end

  def make_a_web
    if @type == 'spider'
      "www"
    end
  end

end

# encapsulation
animal_1 = Animal.new("human", 4, "Shafiu")
puts animal_1.id
puts animal_1.type
puts animal_1.name
puts animal_1.number_of_legs

animal_2 = Animal.new("cat", 8)
puts animal_2.name
puts animal_2.name = 'Fluffy'
puts animal_2.name


# abstraction
animal_dog = Animal.new("dog", 4, "Rex")
animal_spider = Animal.new("spider", 8, "Wilma")

animal_dog.bring_a_stick()
animal_spider.bring_a_stick()

animal_dog.make_a_web()
animal_spider.make_a_web()