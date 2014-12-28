require_relative "point"
require_relative "grid"

class Kangaroo
	attr_reader :pos,:hops
	def initialize grid
		@grid = grid
		@pos  = Point.new
		@hops = 0
	end
	#checks if the hop is valid before making a move
	def hop! direction
		case direction
		when :north then temp_point = Point.new(@pos.x, @pos.y + 1)
		when :south then temp_point = Point.new(@pos.x, @pos.y - 1)
		when :east  then temp_point = Point.new(@pos.x + 1, @pos.y)
		when :west  then temp_point = Point.new(@pos.x - 1, @pos.y)
		end
		#Moves kangaroo if available
		#Returns a string depending on the availability of the move
		unless @grid.lies_outside? temp_point
			@pos = temp_point
			@hops += 1
			"Hopped to (#{pos.x}, #{pos.y})"
		else "Oops, hit the boundary: (#{temp_point.x}, #{temp_point.y})"
		end
	end
	#compares two points and returns a boolean
	def at_home? point
		home = Point.new(@grid.dimension, @grid.dimension)
		home == point
	end
end