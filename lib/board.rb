class Board

	def initialize
		@grid = Array.new(10, Array.new(10,nil))
		@ships = []
	end
	
	def ships
		@ships
	end

	def grid
		@grid
	end
end