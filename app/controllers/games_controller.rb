class GamesController < ApplicationController

  def index
    render json: {
      meta: {
      count: Game.count,
      page: 0
    },
      games: Game.order(:release_date)
    }
  end

  def show
    game = Game.find(params[:id])
    reviews = game.reviews
    render json: {
      meta: {
        count: game.reviews.count,
        page: 0
      },
      game: game,
      reviews: reviews
     }
   end

   def create
     if game = Game.create(game_params)
       render json: { game: game }
     else
       render json: {
         message: "Could not create game",
         errors: game.errors,
       }, status: :unprocessible_entity
     end
   end

   def update
     game = Game.find(params[:id])

     if game.update(game_params)
       render json: { game: game }
     else
       render json: {
         message: "Could not update game",
         errors: game.errors,
       }, status: :unprocessible_entity
     end
   end

   def destroy
     game = Game.find(params[:id])

     if game.destroy
       render json: { game: nil }
     else
       render json: {
         message: "Could not destroy game, please try again",
       }, status: :unprocessible_entity
     end
   end

   private

   def game_param
     params.require(:game).permit(:title, :genre, :developer, :publisher, :release_date, :slipcover, :description)
   end
end
