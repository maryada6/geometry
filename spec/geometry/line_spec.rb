RSpec.describe Geometry::Line do
  context "Line initialization" do
    let(:point_one) { Geometry::Point.new(1, 2) }
    it "should initialize with two points" do
      point_one = Geometry::Point.new(1, 2)
      point_two = Geometry::Point.new(0, 0)

      expect { Geometry::Line.new(point_one, point_two) }.not_to raise_error
    end

    it 'should not initialise line with inputs  that are not point' do
      expect { Geometry::Line.new('3', '2') }.to raise_exception("Cannot initialise line with inputs  that are not point")
    end

    it "should initialize with distance between two points" do
      point_one = Geometry::Point.new(1, 2)
      point_two = Geometry::Point.new(1, 2)

      line = Geometry::Line.new(point_one, point_two)
      expect(line.line_length).to be 0.00
    end
  end
end