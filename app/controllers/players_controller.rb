class PlayersController < ApplicationController

 def index
		@players = Player.all
 end

	def create
		@player = Player.create(player_params)
		redirect_to root_path
	end

private
	   def player_params
	   	params.require(:player).permit(:name, :age, :nationality, :wiki)
	   end




		
	  
		
	
end



