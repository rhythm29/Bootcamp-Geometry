class Geometry::Polygon

  def initialize(side1, side2, side3, side4, side5, side6)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @side4 = side4
    @side5 = side5
    @side6 = side6
  end

  def perimeter
    @side1+@side2+@side3+@side4+@side5+@side6
  end
  
end