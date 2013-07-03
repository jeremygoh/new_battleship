require "board"

describe Board do
let(:board){Board.new}

it "should initialize a 10 by 10 board by default with each element nil by default" do
	board.grid.size.should eq 10
end

it "should have 0 ships by default" do
	board.ships.size.should eq 0
end





end