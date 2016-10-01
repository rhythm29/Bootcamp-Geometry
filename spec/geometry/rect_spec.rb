require 'spec_helper'

describe Geometry::Rect do
  describe '#perimter' do
    it 'should return 0 if both lenght and width are zero' do
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
end