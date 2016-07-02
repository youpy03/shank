class LikesController < ApplicationController
	before_action :authenticate_user!
	def create
        @post = Post.find(params[:post_id])
        @like = current_user.likes.build(post: @post)

        if @like.save
          redirect_to posts_url, notice: "お気に入りに登録しました"
        else
          redirect_to posts_url, alert: "この投稿はお気に入りに登録できません"
        end
    end
    def destroy
        @like = current_user.likes.find_by!(post_id: params[:post_id])
        @like.destroy
        redirect_to posts_url, notice: "お気に入りを解除しました"
    end
end
