class ReviewsController < ApplicationController
  before_action :set_game

  def index
    render json: {
      meta: {
        count: @game.reviews.count,
        page: 0
      },
      reviews: @game.reviews.order(:status, :id)
    }
  end

  def create
    review = Review.new(review_params)
    review.game = @game

    if review.save
      render json: { review: review }
    else
      render json: {
        message: "Could not create Review",
        errors: review.errors,
      }, status: :unprocessible_entity
    end
  end

  def update
    review = @game.reviews.find(params[:id])

    if review.update(review_params)
      render json: { review: review }
    else
      render json: {
        message: "Could not update Review",
        errors: review.errors,
      }, status: :unprocessible_entity
    end
  end

  def destroy
    review = @game.reviews.find(params[:id])

    if review.destroy
      render json: { review: nil }
    else
      render json: {
        message: "Could not destroy Review, please try again",
      }, status: :unprocessible_entity
    end
  end

  private

  def set_game
    @game = Game.find(params[:game_id])
  end

  def review_params
    params.require(:review).permit(:name, :description, :rating)
  end
end
