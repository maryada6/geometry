module Geometry
  class Point
    attr :x_coordinate, :y_coordinate

    def initialize(x_coordinate, y_coordinate)
      @x_coordinate = x_coordinate
      @y_coordinate = y_coordinate
      if x_coordinate.is_a?(String) or y_coordinate.is_a?(String)
        raise "Coordinates cannot be string values"
      end

      if x_coordinate.nil? or y_coordinate.nil?
        raise "Coordinates cannot be nil values"
      end

    end

    def distance_from(target_point)
      if (!target_point.is_a?(Point))
        raise "Cannot calculate distance for an input that is not a point"
      end
      x_coordinate_difference = (target_point.x_coordinate - @x_coordinate).abs
      y_coordinate_difference = (target_point.y_coordinate - @y_coordinate).abs

      distance_between_points = Math.sqrt(x_coordinate_difference ** 2 + y_coordinate_difference ** 2)
      distance_between_points.round(2)
    end

  end
end
