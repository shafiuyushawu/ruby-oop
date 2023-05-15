require './animal.rb'

class Spider < Animal
  def initialize(web_strength_level, name="unknown")
    super("spider", 8, name)
    @web_strength_level = web_strength_level
  end

  def make_a_web
    "www"
  end

  def speak
    "..."
  end
end


spider = Spider.new(85, "Wilma")

spider.bring_a_stick()

spider.make_a_web()