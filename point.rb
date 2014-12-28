class Point
	#Allow classes to get coordinates
	attr_reader :x, :y
	#Initialize x and y 
	def initialize(x = 0,y = 0)
		@x = x
		@y = y
	end
	#Compares two points
	def == point
		point.x == @x and point.y == @y
	end
end