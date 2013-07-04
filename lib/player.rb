class Player

attr_accessor :board, :target, :ships

def initialize(board, target_board, ships)
	@board = board
	@target = target
	@ships = ships
end

def shoot
	@target.shoot
end

def place_ships
	@ships.each{|ship|
		@board.place(ship, coordinates)}
end

def show_own_board
	@board.grid
end

def show_target_board
	@target
end


end