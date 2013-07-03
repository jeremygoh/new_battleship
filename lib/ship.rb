##should the ships have coordinates? or is it sufficient to just track these on the board?

class Ship

attr_accessor :length

	def initialize
		@sunk = false
		@hits = 0
		@location_set = false
		@location = []
	end

	def location
		@location
	end

	def sunk?
		@sunk
	end

	def length
		@length
	end

	def hits
		@hits
	end

	def location_set?
		@location_set
	end

	def set_location!(coordinates)
		@location.replace(coordinates)
		@location_set=true
	end

	def hit!
		@hits += 1
		@sunk = true if @hits == @length
	end

end
