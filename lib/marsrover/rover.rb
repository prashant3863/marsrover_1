module MarsRover
  class Rover

    def initialize(xcord, ycord, direction)
      @xcord = xcord
      @ycord = ycord
      @direction = direction
    end

    def left
      @direction = "W"
    end

    def right
      @direction = "E"
    end
  end
end
