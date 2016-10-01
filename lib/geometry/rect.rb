class Geometry::Rect
  attr_reader :width, :length

  def initialize(length, width)
    @length = length
    @width = width
  end

  def perimeter
    2 * (length + width)
  end

end