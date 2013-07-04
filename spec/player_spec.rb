require 'player'

describe Player do

it "should be able to set a board and target board and ships when initialized" do
	player = Player.new(:board, :target, :ships)
	player.board = :board
	player.target = :target
	player.ships = :ships
end

xit "when shooting, it should call the method target" do
	
end

it "when placing a ship it should call the method place ship on the board" do

end

end