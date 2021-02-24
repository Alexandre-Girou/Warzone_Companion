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
  
end
