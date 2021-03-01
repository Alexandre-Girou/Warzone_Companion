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
      redirect_to @comment.card
    else
      flash[:alert] = "Something went wrong"
      redirect_to @comment.card
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
  
end
