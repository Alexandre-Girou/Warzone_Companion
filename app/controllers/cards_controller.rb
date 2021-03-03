class CardsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home index show]
  def index
    @cards = Card.all

    @cards = @cards.category(params[:category]) if params[:category].present?
    @cards = @cards.level(params[:level]) if params[:level].present?
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    @card.creator = current_user

    @card.save ? (redirect_to @card) : (render "new")
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy ? (flash[:alert] = "card deleted.") : (flash[:error] = "Something went wrong.")
    redirect_to profile_path
  end

  def show
    @card = Card.find(params[:id])
    @comment = Comment.new
    @comments = @card.comments
  end

  private

  def card_params
    params.require(:card).permit(:title, :content, :category, :level, :photo)
  end
end
