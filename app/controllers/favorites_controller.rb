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

    @favorite.save ? "Added to #{@deck.name}!" : "Something went wrong"
    redirect_to profile_path
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy ? (flash[:notice] = 'Removed from favorites.') : (flash[:alert] = 'Something went wrong')
    redirect_to deck_path(@favorite.deck)
  end
end
