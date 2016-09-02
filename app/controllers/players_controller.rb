class PlayersController < ApplicationController

	def index
		@players = Player.order("created_at ASC").paginate(:page => params[:page], :per_page => 3)
		@all_player_ids = Player.all.pluck(:id)
	end

	def create
		@player = Player.create(player_params)
		redirect_to root_path
	end

	def edit
		@player = Player.find(params[:id])
	end

 	def update
		@player = Player.find(params[:id])
		if @player.update(player_params)
			redirect_to root_path
		else
			redirect_to edit_player_path(params[:id])
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



