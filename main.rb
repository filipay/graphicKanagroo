require_relative "grid"
require_relative "point"
require_relative "kangaroo"
require_relative "die"

print "Enter the dimension of the Grid (>= 1): "
dim = 0
while dim < 1
	dim = Integer(gets.chomp)
	if dim < 1 then puts "Invalid input. Try again." end
end

#Variables and objects
grid = Grid.new(dim)
skippy = Kangaroo.new(grid)

#Loop till you reach the home position
until skippy.at_home? Point.new(skippy.pos.x,skippy.pos.y)
	puts skippy.hop! Die.new.throw
end
puts "Finished in #{skippy.hops} hops!"