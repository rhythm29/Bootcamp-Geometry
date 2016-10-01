require 'spec_helper'

describe Geometry::Square do
  describe '#perimeter'do
    it 'should return 0 if side is zero' do
      square = Geometry::Square.new(0)
      expect(square.perimeter).to eq(0)
    end

    it 'should return 12 if side is 3' do
      square = Geometry::Square.new(3)
      expect(square.perimeter).to eq(12)
    end

    it 'should return Float::INFINITY if the values are negative' do
      square = Geometry::Square.new(-1)
      expect(square.perimeter).to eq(Float::INFINITY)
    end

  end

  describe '#area' do
    it 'should return 0 if either side is 0' do
      square = Geometry::Square.new(0)
      expect(square.area).to eq(0)
    end

  end



end