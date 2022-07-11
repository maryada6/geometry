RSpec.describe Geometry::Point do
  context "When testing point entity coordinates" do
    let(:point_one) { Geometry::Point.new(1, 2) }

    it 'should be initialised with two coordinates x,y' do
      expect { point_one }.not_to raise_error
    end

    it 'should handle case when both x and y coordinates are string' do
      expect { Geometry::Point.new("2", "3") }.to raise_error("Coordinates cannot be string values")
    end

    it 'should handle case when x or y coordinates are nil' do
      expect { Geometry::Point.new(nil, nil) }.to raise_exception("Coordinates cannot be nil values")
    end
  end

  context "Distance between points" do
    let(:point_one) { Geometry::Point.new(1, 2) }

    it "should get point as input" do
      expect { point_one.distance_from('2') }.to raise_error("Cannot calculate distance for an input that is not a point")
    end

    it 'should be zero for coincident points' do
      distance = point_one.distance_from(point_one)
      expect(distance).to eq(0.00)
    end

    it 'should be 4.0 for horizontal line with points 0,0 and 4,0 ' do
      point_one = Geometry::Point.new(0, 0)
      point_two = Geometry::Point.new(4, 0)

      distance = point_one.distance_from(point_two)
      expect(distance).to eq(4.00)
    end

    it 'should be 4.0 for vertical line with points 0,0 and 0,4 ' do
      point_one = Geometry::Point.new(0, 0)
      point_two = Geometry::Point.new(0, 4)

      distance = point_one.distance_from(point_two)
      expect(distance).to eq(4.00)
    end

    it 'should be 2.83 for diagonal line with points 2,3 and 4,5' do
      point_one = Geometry::Point.new(2, 3)
      point_two = Geometry::Point.new(4, 5)

      distance = point_one.distance_from(point_two)
      expect(distance).to eq(2.83)
    end

    it 'should be 2.83 for diagonal line with points 4,5 and 2,3' do
      point_one = Geometry::Point.new(4, 5)
      point_two = Geometry::Point.new(2, 3)

      distance = point_one.distance_from(point_two)
      expect(distance).to eq(2.83)
    end
  end
end
