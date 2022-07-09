RSpec.describe Geometry::Line do
  context "Line initialization" do
    it "should be initialized with two points" do
      point_one = Geometry::Point.new(1, 2)
      point_two = Geometry::Point.new(0, 0)
      expect { Geometry::Line.new(point_one, point_two) }.not_to raise_error
    end
  end
end