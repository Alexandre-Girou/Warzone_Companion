class VotesController < ApplicationController
  def create
    @vote = Vote.new
    @vote.status = params[:vote][:status]
    @card = Card.find(params[:card_id])
    @vote.card = @card
    @vote.user = current_user
    if @vote.save
      respond_to do |format|
        format.html { redirect_to @card }
        format.json { render json: { status: "succeed", votes: @card.votes.where(status: 'upvote').count }}
      end
    else
      respond_to do |format|
        format.html
        format.json { render json: { status: "failed" }}
      end
    end
  end

  def destroy
    @vote = Vote.find(params[:card_id])
    if @vote.destroy
      flash[:success] = 'Object was successfully deleted.'
      redirect_to votess_url
    else
      flash[:error] = 'Something went wrong'
      redirect_to votess_url
    end
  end
  
  private

  def secure_params
    params.require(:vote).permit(:user)
  end
end
