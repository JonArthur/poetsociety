class CommentsController < ApplicationController
  def create
    @poem = Poem.find(params[:poem_id])
    @comment = @poem.comments.create(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
    	redirect_to poem_path(@poem)
    else
    	redirect_to poem_path(@poem)
    end

  end
 
  
 
  private
    def comment_params
      params.require(:comment).permit(:body)
    end
end

