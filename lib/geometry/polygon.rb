class Geometry::Polygon

  def initialize(polygon)
    @polygon = polygon
  end

  def perimeter

  sum = 0
  @polygon.each { |a| sum+=a }
  return sum
  end
  
end