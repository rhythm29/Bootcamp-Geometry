class Geometry::Square

  def initialize(side)
    @side = side
  end

  def perimeter
    if valid?
      4 * @side
    else
      Float::INFINITY
    end
  end


  def area
    if valid?
      @side * @side
    else
      Float::INFINITY
    end
  end

  def valid?
    @side >= 0
  end

end