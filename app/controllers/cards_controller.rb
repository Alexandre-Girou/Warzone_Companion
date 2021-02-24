class CardsController < ApplicationController

  def index
    @cards = Card.all

    if params[:category].present?
      @cards = @cards.category(params[:category])
    end

    if params[:level].present?
      @cards = @cards.level(params[:level])
    end
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to @card
    else
      render 'new'
    end
  end

  private

  def card_params
    params.require(:card).permit(:title, :content, :category, :level)
  end
end
