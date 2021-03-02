class VotesController < ApplicationController
  def create
    @vote = Vote.new
    @vote.status = params[:vote][:status]
    @card = Card.find(params[:card_id])
    @vote.card = @card
    @vote.user = current_user
    @card.votes.find_by(user_id: current_user.id).destroy if @card.votes.find_by(user_id: current_user.id).present?
    if @vote.save!
      respond_to do |format|
        format.html { redirect_to @card }
        format.json { render json: { status: "succeed", votes: @card.votes.where(status: @vote.status).count, voted: @vote.status, upvotes: @card.upvotes, downvotes: @card.downvotes }}
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
