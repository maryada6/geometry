RSpec.describe Geometry::Point do
  context "When testing point entity coordinates" do
    it 'should be initialised with two coordinates x,y' do
      expect { Geometry::Point.new(1, 2) }.not_to raise_error
    end

    it 'should handle case when both x and y coordinates are string' do
      expect { Geometry::Point.new("2", "3") }.to raise_error("Coordinates cannot be string values")
    end

    it 'should handle case when x or y coordinates are nil' do
      expect { Geometry::Point.new(nil, nil) }.to raise_exception("Coordinates cannot be nil values")
    end

  end

  context "Distance between points" do
    it 'should be zero for coincident points' do
      point_one = Geometry::Point.new(1, 2)
      point_two = Geometry::Point.new(1, 2)
      distance = point_one.distance(point_two)
      expect(distance).to eq(0.0)
    end
    it 'should be 4.0 for horizontal line with points 0,0 and 4,0 ' do
      point_one = Geometry::Point.new(0, 0)
      point_two = Geometry::Point.new(4, 0)
      distance = point_one.distance(point_two)
      expect(distance).to eq(4.0)
    end

    it 'should be 4.0 for vertical line with points 0,0 and 0,4 ' do
      point_one = Geometry::Point.new(0, 0)
      point_two = Geometry::Point.new(0, 4)
      distance = point_one.distance(point_two)
      expect(distance).to eq(4.0)
    end

    it 'should be 2.8284271247461903 for diagonal line with points 2,3 and 4,5' do
      point_one = Geometry::Point.new(2, 3)
      point_two = Geometry::Point.new(4, 5)
      distance = point_one.distance(point_two)
      expect(distance).to eq(2.8284271247461903)
      expect(distance).to eq(2.8284271247461903)
    end

    it 'should be 2.8284271247461903 for diagonal line with points 4,5 and 2,3' do
      point_one = Geometry::Point.new(2, 3)
      point_two = Geometry::Point.new(4, 5)
      distance = point_one.distance(point_two)
      expect(distance).to eq(2.8284271247461903)
      expect(distance).to eq(2.8284271247461903)
    end
  end
end
