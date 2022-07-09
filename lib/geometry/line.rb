module Geometry
  class Line
    def initialize(point_one, point_two)
      @point_one = point_one
      @point_two = point_two
    end

    def distance
      x_coordinate_difference = (@point_one.x_coordinate - @point_two.x_coordinate).abs
      y_coordinate_difference = (@point_one.y_coordinate - @point_two.y_coordinate).abs

      distance_between_points = [x_coordinate_difference, y_coordinate_difference].max
      distance_between_points
    end
  end
end