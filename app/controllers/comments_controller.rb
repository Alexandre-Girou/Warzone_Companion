class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.card = Card.find(params[:card_id])
    @comment.creator = current_user
    @comment.save ? (flash[:notice] = "Comment successfully created") : (flash[:alert] = "Something went wrong")

    redirect_to @comment.card
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
