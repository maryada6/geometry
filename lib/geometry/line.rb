module Geometry
  class Line
    def initialize(point_one, point_two)
      @point_one = point_one
      @point_two = point_two
    end

    def distance
      x_coordinate_difference = (@point_one.x_coordinate - @point_two.x_coordinate).abs
      y_coordinate_difference = (@point_one.y_coordinate - @point_two.y_coordinate).abs

      distance_between_points = Math.sqrt(x_coordinate_difference ** 2 + y_coordinate_difference ** 2)
      distance_between_points
    end
  end
end