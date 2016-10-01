require 'spec_helper'

describe Geometry::Polygon do
  describe "#polygon" do

    it "should return 0 when all the sides are 0" do
      polygon = Geometry::Polygon.new(0,0,0,0,0,0)
      expect(polygon.perimeter).to eq(0)
    end
  end
end
