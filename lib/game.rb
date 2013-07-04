class Game


#this method determines who goes first. 1 or 2 and sets it to an instance variable


def finished?
	##something which checks that the status of all ships are not sunk
	p1.ships.all?{|ship| ship.sunk?} || p2.ships.all?{|ship| ship.sunk?}
end

end

def winner
	return "Player 1" if p1.score == 5
	return "Player 2" if p2.score == 5
end


def set_up

	p1_ships = [AircraftCarrier.new, Battleship.new, Submarine.new, Destroyer.new, PatrolBoat.new]
	p2_ships = [AircraftCarrier.new, Battleship.new, Submarine.new, Destroyer.new, PatrolBoat.new]
	p1_board = Board.new
	p2_board = Board.new
	p1_target = Target.new(p2_board)
	p2_target = Target.new(p1_board)
	p1 = Player.new(p1_board, p1_target, p1_ships)
	p2 = Player.new(p2_board, p2_target, p2_ships)
	p1.place_ships
	p2.place_ships
end

def who_goes_first
	if rand(1) == 1
		@turn = 1
	else
		@turn =2
	end
	@turn
end

def gameplay

	while !finished?
		if @turn == 1
			p1.shoot
			@turn = 2
		elsif @turn == 2
			p2.shoot
			@turn = 1
		else
			"ERROR"
		end
	end
	puts "The winner is #{winner}!"
	puts "Thanks for playing."
	Process.exit(0)
end

def start
	set_up
	who_goes_first
	gameplay
end
