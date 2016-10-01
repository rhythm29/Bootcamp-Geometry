require 'spec_helper'

describe Geometry::Polygon do
  describe "#polygon" do

    it "should return 0 when all the sides are 0" do
      polygon = Geometry::Polygon.new(0,0,0,0,0,0)
      expect(polygon.perimeter).to eq(0)
    end

    it "should return 21 when given sides are 1,2,3,4,5,6" do
      polygon = Geometry::Polygon.new(1,2,3,4,5,6)
      expect(polygon.perimeter).to eq(21)
    end
  end
end
