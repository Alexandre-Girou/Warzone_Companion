class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @card = Card.all.sample
  end

  def profile
    @user = current_user
  end
end
