require "spec_helper"
describe Geometry::LineSegment do

  describe '#length' do
    it 'should return 4 when given 0,0,4,0' do
      segment = Geometry::LineSegment.new(0,0,4,0)
      expect(segment.length).to eq(4)
    end

    it 'should return 5 when given 0,0,3,4' do
      segment = Geometry::LineSegment.new(0,0,3,4)
      expect(segment.length).to eq(5)
    end

    it 'should return square root of 2 when given 1,1,2,2' do
      segment = Geometry::LineSegment.new(1,1,2,2)
      expect(segment.length).to eq(Math.sqrt(2))
    end

    it 'should return square root of 34 when given 4,3,7,8' do
      segment = Geometry::LineSegment.new(4,3,7,8)
      expect(segment.length).to eq(Math.sqrt(34))
    end
  end

  describe '#compare_and_sort' do
    it 'should return true when both line segments (0,0,4,0) have equal length' do
      line_segment1 = Geometry::LineSegment.new(0,0,4,0)
      line_segment2 = Geometry::LineSegment.new(0,0,4,0)
      expect(line_segment1.compare_and_sort(line_segment2)).to eq(true)
    end

    it 'should return false when line segment(0,0,1,0) is smaller than line segment(0,0,4,0) have equal length' do
      line_segment1 = Geometry::LineSegment.new(0,0,1,0)
      line_segment2 = Geometry::LineSegment.new(0,0,4,0)
      expect(line_segment1.compare_and_sort(line_segment2)).to eq(false)
    end

    it 'should return true when line segment(0,0,4,0) is bigger than line segment(0,0,1,0) have equal length' do
      line_segment1 = Geometry::LineSegment.new(0,0,4,0)
      line_segment2 = Geometry::LineSegment.new(0,0,1,0)
      expect(line_segment1.compare_and_sort(line_segment2)).to eq(true)
    end

  end
end
