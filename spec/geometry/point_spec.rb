RSpec.describe Geometry::Point do
  context "When testing point entity coordinates" do
    it 'should be initialised with two coordinates x,y' do
      expect { Geometry::Point.new(1, 2) }.not_to raise_error
    end
  end
end