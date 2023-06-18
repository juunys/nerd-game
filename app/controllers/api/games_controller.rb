class Api::GamesController < Api::ApplicationController

	def play
		game_service = GameService.new(game_params)

	    if game_service.validate_moves
      		result = game_service.calculate_result
      		render json: { result: result }, status: :ok
	    else
      		render json: { error: 'Invalid moves' }, status: :unprocessable_entity
	    end
  	end

  	private

  	def game_params
    	params.require(:moves).map { |player| player.permit(:name, :move) }
  	end
end
