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
      elsif @direction == "E" 
        @direction = "N"
      else
        @direction = "S"
      end
    end

    def right
      if @direction == "N"
        @direction = "E"
      elsif @direction == "S"
        @direction = "W"
      else
        @direction = "S"
      end
    end
  end
end
