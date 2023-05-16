class Other
  def overrides
    "OTHER overrides"
  end

  def implicit
    "OTHER implicit"
  end

  def altered
    "OTHER altered"
  end
end

class Child
  def initialize
    @other = Other.new
  end

  def implicit
    @other.implicit
  end

  def overrides
    @other.overrides
  end

  def altered
    puts "CHILD, BEFORE OTHER altered"
    @other.altered
  end
end

    
