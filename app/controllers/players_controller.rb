class PlayersController < ApplicationController

 def index
		@players = Player.order("created_at DESC").paginate(:page => params[:page], :per_page => 3)
 end

	def create
		@player = Player.create(player_params)
		redirect_to root_path
	end

 def edit
 	@player = Player.find(params[:id])
 	def update
 	 @player = Player.find(params[:id])
 	 if @player.update(player_params)
 		redirect_to root_path
 	 else
 		redirect_to edit_player_path(params[:id])
 	 end
 	end
 end
 	
 
  
  

 

 def destroy
 	@player = Player.find(params[:id])
 	@player.destroy
 	redirect_to root_path
 	
 end
 	
 

private
	   def player_params
	   	params.require(:player).permit(:name, :age, :nationality, :wiki)
	   end




		
	  
		
	
end



