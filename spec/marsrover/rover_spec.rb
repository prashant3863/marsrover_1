require "spec_helper"

module MarsRover
  describe "Rover" do 
    it "turns 90 deg. to the left when left is called" do
      rover = Rover.new(1, 2, "N")
      expect(rover.left).to eq("W")
    end

    it "turns 90 deg. to the left when left is called" do
      rover = Rover.new(1, 2, "N")
      expect(rover.right).to eq("E")
    end
  end
end
