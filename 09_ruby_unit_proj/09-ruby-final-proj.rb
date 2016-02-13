class Shape
  @@our_shapes = []

  def self.inherited(subclass)
    @@our_shapes << subclass
  end

  def self.our_shapes
    @@our_shapes
  end

  attr_reader :sides, :vertex
  def initialize(number_of_sides)
    @sides = number_of_sides
    @vertex = number_of_sides
  end
end

class Tetrahedron < Shape
  def initialize
    super(6)
  end
end

# Rectangle subclasses Shape, but takes 2 arguments
class Rectangle < Shape
  attr_reader :length, :width
  def initialize(length, width)
    @length = length
    @width = width
    super(4) # Gives sides and vertices properties
  end

  def area
    @area ||= length * width
  end

  def perimeter
    @perimeter ||= 2 * (length + width)
  end
end

class Square < Rectangle
  def initialize(length)
    super(length, length)
  end
end

class Circle < Shape
  def initialize(diameter = 1)
    @diameter = diameter
    super(1 / 0.0)
  end
end

class Die < Shape
  def initialize(sides)
    super(sides)
  end

  def roll
    rand(@sides).next
  end
end

if __FILE__ == $PROGRAM_NAME
  1 + 2
  "some string"
  my_20_sided_die = Die.new(20)
  result = 5.times.map {
    my_20_sided_die.
    roll
  }
  puts result
end