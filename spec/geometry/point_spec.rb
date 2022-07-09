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
end