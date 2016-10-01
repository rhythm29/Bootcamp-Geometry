class Geometry::Rect
  attr_reader :width, :length

  def initialize(length, width)
    @length = length
    @width = width
  end

  def perimeter
    if(length > 0 && width > 0)
    2 * (length + width)
    else
      0
    end
  end

end