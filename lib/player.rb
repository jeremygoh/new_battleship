class Player

attr_accessor :board, :target, :ships

def initialize(board, target, ships)
	@board = board
	@target = target
	@ships = ships
end

def shoot
	@target.shoot
end

def placeships
	@ships.each{|ship|
		@board.place(ship, coordinates)}
end


end