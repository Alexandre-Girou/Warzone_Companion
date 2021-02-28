class FavoritesController < ApplicationController
  def index
    @user = current_user
    @favorites = Deck.where(user_id: @user, name: "Favorites")
  end

  def create
    @card = Card.find(params[:card_id])
    @favorite = Favorite.new
    @favorite.card = @card
    @deck = Deck.find_by(name: params[:name])
    @favorite.deck = @deck

    @favorite.save ? (redirect_to @card) : (render @card, flash[:alert] = "Something went wrong")
  end
end
