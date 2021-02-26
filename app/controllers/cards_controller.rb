class CardsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home index]
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

    if @card.save
      redirect_to @card
    else
      render 'new'
    end
  end

  def show
    @card = Card.find(params[:id])
  end

  private

  def card_params
    params.require(:card).permit(:title, :content, :category, :level)
  end
end
