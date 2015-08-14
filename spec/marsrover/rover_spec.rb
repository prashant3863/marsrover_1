require "spec_helper"

module MarsRover
  describe "Rover" do
  let(:rover_north) { Rover.new(1, 2, "N") }
  let(:rover_south) { Rover.new(1, 2, "S") }
  let(:rover_east) { Rover.new(1, 2, "E") }

    context "Left turn" do 
      it "turns 90 deg. to the left when facing north" do
        expect(rover_north.left).to eq("W")
      end

      it "turns 90 deg. to the left when facing south" do
        expect(rover_south.left).to eq("E")
      end

      it "turns 90 deg. to the left when facing south" do
        expect(rover_east.left).to eq("N")
      end
    end

    it "turns 90 deg. to the right when right is called" do
      expect(rover_north.right).to eq("E")
    end
  end
end
