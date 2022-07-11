module Geometry
  class Line
    attr :point_one, :point_two

    def initialize(point_one, point_two)
      if !point_one.is_a?(Point) and !point_two.is_a?(Point)
        raise "Cannot initialise line with inputs  that are not point"
      end
      @point_one = point_one
      @point_two = point_two
    end

    def line_length
      @point_one.distance_from(@point_two)
    end
  end
end
