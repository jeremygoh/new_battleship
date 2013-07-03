require "board"
require "ship"
require "patrolboat"

describe Board do
let(:board){Board.new}

	it "should initialize a 10 by 10 board by default with each element nil by default" do
		board.grid.size.should eq 10
	end

	it "should have 0 ships by default" do
		board.ships.size.should eq 0
	end

	it "should have 0 occupied squares by default" do
		board.occupied.size.should eq 0
	end



context "placing a ship" do

	xit "should change location set when placing ship" do
		patrolboat= PatrolBoat.new
		board.place(patrolboat, ["A1", "A2"])
		patrolboat.should_receive(:set_location!)
	end

	it "should check if the coordinates are occupied before allowing the ship to be set" do
		board.occupied = ["A1"]
		board.occupied?(["A1"]).should be_true
	end

	it "should check that the size of the coordinates corresponds to the ship" do
		patrolboat= PatrolBoat.new
		board.size?(patrolboat, ["A1","A2", "A3"]).should be_false
	end

	context "check that the coordinates are within the allowable range" do
		it "should return false when given A11" do
			board.in_range?(["A11"]).should be_false
		end

		it "should return true when given A10" do
			board.in_range?(["A10"]).should be_true
		end

		it "should return false if even one of the elements is outside the allowable range" do
			board.in_range?(["A10", "K1"]).should be_false
		end
	end

	context "horizontal validity" do

			context "it should check that the sequence of the coordinates is valid" do
				it "should allow sequential lettered coordinates for horizontal" do
					board.sequential_letters?(["A1", "B1"]).should be_true
				end

				it "should not allow non-sequential lettered coordinates for horizontal" do
					board.sequential_letters?(["B1","D1"]).should be_false
				end
			end

			context "it should check that the number of the coordinates in horizontal are the same" do
				it "should return true if numbers are all the same" do
					board.same_number?(["A1", "B1"]).should be_true
				end

				it "should return flase if the numbers are not the same" do
					board.same_number?(["A1", "B3"]).should be_false
				end

			end
	end

	context "vertical validity" do

		context "it should check that the row is the same" do
			it "should return true if the coordinates all of the same letter" do
				board.same_letter?(["A1","A2"]).should be_true
			end

			it "should return false if the coordinates are not the same letter" do
				board.same_letter?(["A1", "B2"]).should be_false
			end
		end	


		context "it should check that the numbers are sequential" do
			it "should return true if the numbers are sequential" do
				board.sequential_numbers?(["A1","A2"]).should be_true
			end

			it "should return false if the numbers are not sequential" do
				board.sequential_numbers?(["A8", "A10"]).should be_false
			end
		end

	end

		context "applying coordinates to the grid" do

				context "convert_letter_to_number" do
					it "should return 1 for A" do
					board.convert_letter_to_number("A").should eq "1"
					end

					it "should return 10 for J" do
					board.convert_letter_to_number("J").should eq "10"
					end
				end

				context "convert coordinate to an array of all number strings" do
					it "should return [11,21,31] for [A1,B1,C1]" do
					board.convert_to_numbers(["A1", "B1", "C1"]).should eq ["11", "21", "31"]
					end
				end	

			##some test to check that the appropriate elements in the array are being changed
	

	end


end
	




end