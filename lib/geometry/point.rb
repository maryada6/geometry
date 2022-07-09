module Geometry
  class Point
    def initialize(x_coordinate, y_coordinate)
      if x_coordinate.is_a?(String) or y_coordinate.is_a?(String)
        raise "Coordinates cannot be string values"
      end
    end
  end
end