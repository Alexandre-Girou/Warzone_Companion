class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @card = Card.last
  end

  def profile
    @user = current_user
  end
end
