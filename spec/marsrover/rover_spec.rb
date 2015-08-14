require "spec_helper"

module MarsRover
  describe "Rover" do
  let(:rover_north) { Rover.new(1, 2, "N") }
  let(:rover_south) { Rover.new(1, 2, "S") }
  let(:rover_east) { Rover.new(1, 2, "E") }
  let(:rover_west) { Rover.new(1, 2, "W") }

    context "Left turn" do 
      it "turns 90 deg. to the left when facing north" do
        expect(rover_north.left).to eq("W")
      end

      it "turns 90 deg. to the left when facing south" do
        expect(rover_south.left).to eq("E")
      end

      it "turns 90 deg. to the left when facing east" do
        expect(rover_east.left).to eq("N")
      end

      it "turns 90 deg. to the left when facing west" do
        expect(rover_west.left).to eq("S")
      end
    end

    context "Right turn" do
      it "turns 90 deg. to the right when facing north" do
        expect(rover_north.right).to eq("E")
      end

      it "turns 90 deg. to the right when facing south" do
        expect(rover_south.right).to eq("W")
      end

      it "turns 90 deg. to the right when facing east" do
        expect(rover_east.right).to eq("S")
      end

      it "turns 90 deg. to the right when facing west" do
        expect(rover_west.right).to eq("N")
      end
    end

    context "Moving" do
      it "moves one step facing north" do
        expect(rover_north.move).to eq(3)
      end

      it "moves one step facing south" do
        expect(rover_south.move).to eq(1)
      end

      it "moves one step facing east" do
        expect(rover_east.move).to eq(2)
      end
    end
  end
end
