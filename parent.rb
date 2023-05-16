class Parent
  def implicit
    "PARENT implicit"
  end

  def overrides
    "PARENT overrides"
  end
  
  def altered
    "Parent altered"
  end

end

class Child < Parent
  def overrides
    "CHILD overrides"
  end

  def altered
    puts "CHILD, BEFORE PARENT altered"
    super()
    puts "CHILD, AFTER PARENT altered"
  end
end

dad = Parent.new
son = Child.new

dad.implicit
son.implicit

dad.overrides
dad.overrides

dad.altered
son.altered