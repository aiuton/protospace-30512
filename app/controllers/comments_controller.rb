class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
    redirect_to  controller: :prototypes, action: :show, id: @comment.prototype
    else 
      @prototype = @comment.prototype
      @comments = @prototype.comments
      render template: "prototypes/show"
    end
  end



def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end
end
