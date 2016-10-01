class Geometry::Rect

  def initialize(length, width)
    @length = length
    @width = width
  end

  def perimeter
    if(@length > 0 && @width > 0)
    2 * (@length + @width)
    else
      0
    end
  end

  def area
    if(@length >= 0 && @width >= 0)
      0
    else
      Float::INFINITY
    end
  end

end