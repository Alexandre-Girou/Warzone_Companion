class DecksController < ApplicationController
  def index
    @decks = Deck.all
  end

  def new
    @deck = Deck.new
  end

  def create
    @deck = Deck.new(deck_params)
    @deck.user = current_user

    @deck.save ? "Successfully added!" : "Something went wrong"
    redirect_to profile_path
  end

  def destroy
    @deck = Deck.find(params[:id])
    @deck.destroy ? "Deck deleted." : "Something went wrong."
    redirect_to profile_path
  end

  def show
    @deck = Deck.find(params[:id])
    @cards = @deck.cards
  end

  private

  def deck_params
    params.require(:deck).permit(:name)
  end
end
