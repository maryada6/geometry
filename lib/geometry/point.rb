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
  end
end