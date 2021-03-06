module MarsRover
  class Rover
    # it determines the direction change for the rover
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
      elsif @direction == "E"
        @direction = "S"
      else
        @direction = "N"
      end
    end

    def move
      if @direction == "N"
        @ycord = @ycord + 1
      elsif @direction == "S"
        @ycord = @ycord - 1
      elsif @direction == "E"
        @xcord = @xcord + 1
      else
        @xcord = @xcord - 1
      end
    end
  end
end
