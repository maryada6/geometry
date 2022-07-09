RSpec.describe Geometry::Line do
  context "Line initialization" do
    it "should be initialized with two points" do
      point_one = Geometry::Point.new(1, 2)
      point_two = Geometry::Point.new(0, 0)
      expect { Geometry::Line.new(point_one, point_two) }.not_to raise_error
    end
  end

  context "Distance between points" do
    it 'should be zero for coincident points' do
      point_one = Geometry::Point.new(1, 2)
      point_two = Geometry::Point.new(1, 2)
      line = Geometry::Line.new(point_one, point_two)
      distance = line.distance
      expect(distance).to eq(0.0)
    end
    it 'should be 4.0 for horizontal line with points 0,0 and 4,0 ' do
      point_one = Geometry::Point.new(0, 0)
      point_two = Geometry::Point.new(4, 0)
      line = Geometry::Line.new(point_one, point_two)
      distance = line.distance
      expect(distance).to eq(4.0)
    end

    it 'should be 4.0 for vertical line with points 0,0 and 0,4 ' do
      point_one = Geometry::Point.new(0, 0)
      point_two = Geometry::Point.new(0, 4)
      line = Geometry::Line.new(point_one, point_two)
      distance = line.distance
      expect(distance).to eq(4.0)
    end
  end
end