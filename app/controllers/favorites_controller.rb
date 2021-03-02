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

    @favorite.save ? (redirect_to @card, flash[:notice] = "Added to #{@deck.name}!") : (render @card, flash[:alert] = "Something went wrong")
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy ? (flash[:notice] = 'Removed from favorites.') : (flash[:alert] = 'Something went wrong')
    render "home"
  end
end
