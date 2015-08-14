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
      else
        @direction = "E"
      end
    end

    def right
      @direction = "E"
    end
  end
end
