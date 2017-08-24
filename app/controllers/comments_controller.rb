class CommentsController < ApplicationController
  def create
    @poem = Poem.find(params[:poem_id])
    @comment = @poem.comments.create(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
    	redirect_to poem_path(@poem),notice:"Successfully added comment"
    else
    	redirect_to poem_path(@poem),alert:"Cant add comment"
    end
  end
 
  def destroy
    @poem = Poem.find(params[:poem_id])
    @comment = @poem.comments.find(params[:id])
    @comment.destroy
    redirect_to poem_path(@poem)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:body)
    end
end

