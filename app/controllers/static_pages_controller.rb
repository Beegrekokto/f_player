class StaticPagesController < ApplicationController
	def about
		
	end

	def random
		@player = Player.order("Random()").first
		
	end
end
