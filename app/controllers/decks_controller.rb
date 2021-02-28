class DecksController < ApplicationController
  def index
    @decks = Deck.all
  end

  def new
    @deck = Deck.new
  end

  def create
    @deck = Deck.new(deck_params)
    if @decks.save
      flash[:success] = "Object successfully created"
      redirect_to @deck
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
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
