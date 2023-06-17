class Api::GamesController < Api::ApplicationController

	def play
		render json: {message: "Hi!"}, status: :ok
	end
end
