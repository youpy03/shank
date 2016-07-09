class CommentsController < ApplicationController
  def create
  	@post = Post.find(params[:post_id])
  	@comment = Comment.new(comment_params)
  	@comment.user_id = current_user.id
    @comment.post_id = @post.id
    # @comment_form_url = post_comments_path(params[:id])
  	  respond_to do |format|
      if @comment.save
        format.html { redirect_to @post, notice: 'コメントしました' }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to :back, notice: 'コメントを削除しました'
  end


private
 def comment_params
      params.require(:comment).permit(:body, :user_id, :post_id)
    end
end

