class Die
	def throw		
		positions = [:north,:east,:south,:west]
		positions[rand(4)]
	end
end