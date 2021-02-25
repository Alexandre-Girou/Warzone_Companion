class FavoritesController < ApplicationController
  def index
    @user = current_user
    @favorites = Deck.where(user_id: current_user)
  end
end
