module MarsRover
  class Rover

    def initialize(xcord, ycord, direction)
      @xcord = xcord
      @ycord = ycord
      @direction = direction
    end

    def left
      if @direction == "N"
        @direction = "W"
      elsif @direction == "S"
        @direction = "E"
      else
        @direction = "N"
      end
    end

    def right
      @direction = "E"
    end
  end
end
