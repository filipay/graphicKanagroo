require_relative "point"
class Grid
	attr_reader :dimension
	def initialize (dimension)
		@dimension = dimension - 1
	end

	#Checks if a given point is outside
	def lies_outside? point
		x = point.x
		y = point.y

		x < 0 or x > @dimension or \
		y < 0 or y > @dimension
	end
end