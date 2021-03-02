class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @card = Card.last
    @trick = Card.where(category: "Tricks").last
    @weapon = Card.where(category: "Weapons").last
  end

  def profile
    @user = current_user
    @decks = @user.decks
    @deck = Deck.new
  end
end
