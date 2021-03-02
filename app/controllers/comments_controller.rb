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
    if @comment.save
      flash[:notice] = "Comment successfully created"
    else
      flash[:alert] = "Something went wrong"
    end
    redirect_to @comment.card
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
