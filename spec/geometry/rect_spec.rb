require 'spec_helper'

describe Geometry::Rect do
  describe '#perimeter' do
    it 'should return 0 if both length and width are zero' do
      rect = Geometry::Rect.new(0,0)
      expect(rect.perimeter).to eq(0)
    end

    it 'should return 6 if both lenght and width are 1 and 2 respectively' do
      rect = Geometry::Rect.new(1,2)
      expect(rect.perimeter).to eq(6)
    end

    it 'should return 0 if the values are negative' do
      rect = Geometry::Rect.new(-1,-2)
      expect(rect.perimeter).to eq(0)
    end

  end

  describe '#area' do
    it'should return 0 if either length or width is 0'do
      rect = Geometry::Rect.new(0,1)
      expect(rect.area).to eq(0)
    end

    it'should return Float::INFINITY if either length or width is negative'do
      rect = Geometry::Rect.new(2,-1)
      expect(rect.area).to eq(Float::INFINITY)
    end

  end
end